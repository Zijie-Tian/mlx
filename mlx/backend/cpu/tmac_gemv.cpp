// Copyright © 2023-2024 Apple Inc.

#include <tvm/runtime/module.h>
#include <tvm/runtime/packed_func.h>
#include <tvm/runtime/registry.h>
#include <dlpack/dlpack.h>

#include <cstring>
#include <iostream>
#include <vector>
#include <future>
#include "mlx/array.h"
#include "mlx/backend/cpu/copy.h"
#include "mlx/backend/cpu/gemm.h"
#include "mlx/primitives.h"
#include "mlx/ops.h"

#include <mlx/backend/common/tvm_internals.h>
#include <mlx/backend/cpu/tmac/kernels.h>
#include <mlx/threadpool.h>
#include <mlx/backend/cpu/tmac_gemv.h>

#define milliseconds(x) \
  (std::chrono::duration_cast<std::chrono::nanoseconds>(x).count() / 1e6)
#define time_now() std::chrono::high_resolution_clock::now()

namespace mlx::core {

#if defined(USE_TVM_THREADPOOL) || defined(USE_TVM_LIB)
struct TVMInternals {
    tvm::runtime::Module _mod_lib;
    std::map<_fkey, tvm::runtime::PackedFunc> _fcache;
    const tvm::runtime::PackedFunc* _config_threadpool;
    tvm::runtime::PackedFunc pf;
    tvm::runtime::PackedFunc qf;
};
#endif

// TODO : Add sync thread to this pool.
ThreadPool TMACMatmul::_thread_pool{24};

// Initialize the static member variable
#if defined(USE_TVM_THREADPOOL) || defined(USE_TVM_LIB)
TVMInternals* TMACMatmul::_tvm_internals = nullptr;
#endif
INIReader* TMACMatmul::_reader = nullptr;

struct TMACGeMMConfig {
    int bm;
    int simd_n_in;
    int simd_n_out;
    int kfactor;
    int group_size;
    int lut_scales_size;
    int scales_size;
    int n_tile_num;
  
    // Overload the << operator to allow printing the struct
    friend std::ostream& operator<<(std::ostream& os, const TMACGeMMConfig& config) {
      os << "TMACGeMMConfig {"
         << "bm: " << config.bm << ", "
         << "simd_n_in: " << config.simd_n_in << ", "
         << "simd_n_out: " << config.simd_n_out << ", "
         << "kfactor: " << config.kfactor << ", "
         << "group_size: " << config.group_size << ", "
         << "lut_scales_size: " << config.lut_scales_size << ", "
         << "scales_size: " << config.scales_size << ", "
         << "n_tile_num: " << config.n_tile_num
         << "}";
      return os;
    }
};

#define QUOTE(name) #name
#define STR(macro) QUOTE(macro)

inline std::string get_kcfg_file(const std::string& kcfg_file)
{
  if (kcfg_file.empty()) {
    if (const char* kcfg_file_cstr = getenv("TMAC_KCFG_FILE")) {
      return kcfg_file_cstr;
    } else {
#ifdef TMAC_KCFG_FILE
      return STR(TMAC_KCFG_FILE);
#else
      LOG(FATAL) << "Please set TMAC_KCFG_FILE environment variable";
      return "";
#endif
    }
  } else {
    return kcfg_file;
  }
}

#if defined(USE_TVM_THREADPOOL) || defined(USE_TVM_LIB)
inline std::string get_library_file(const std::string& library_file)
{
  if (library_file.empty()) {
    if (const char* library_file_cstr = getenv("TMAC_KERNELS_LIBRARY")) {
      return library_file_cstr;
    } else {
#ifdef TMAC_KERNELS_LIBRARY
      return STR(TMAC_KERNELS_LIBRARY);
#else
      LOG(FATAL) << "Please set TMAC_KERNELS_LIBRARY environment variable";
      return "";
#endif
    }
  } else {
    return library_file;
  }
}
#endif

#undef STR
#undef QUOTE

#if defined(USE_TVM_THREADPOOL) || defined(USE_TVM_LIB)
tvm::runtime::PackedFunc get_function(TVMInternals* _tvm_internals, std::mutex& _m, const std::string& func_name, _fkey key) {
    std::lock_guard<std::mutex> lock(_m);
    auto iter = _tvm_internals -> _fcache.find(key);
    tvm::runtime::PackedFunc f = nullptr;
    if (iter == _tvm_internals -> _fcache.end()) {
        // std::string func_name = get_template_name(key);
        f = _tvm_internals -> _mod_lib.GetFunction(func_name);
        ICHECK(f != nullptr) << func_name;
        _tvm_internals -> _fcache[key] = f;
        return f;
    } else {
        return iter->second; // Get the function from the cache
    }
}
#endif

TMACMatmul::TMACMatmul(
    Stream stream, 
    const std::string& kcfg_file, const std::string& library_file,
    int M, int K, int N, int nbits)
    : UnaryPrimitive(stream),
    M_(M), K_(K), N_(N), nbits_(nbits), _n_threads(12) {
    
    if (TMACMatmul::_reader == nullptr) {
        TMACMatmul::_reader = new INIReader(get_kcfg_file(kcfg_file));
    }

    if (this->N_ >= 512) {
        this->N_kernel = 512;
    } else if (this->N_ >= 256) {
        this->N_kernel = 256;
    } else {
        this->N_kernel = 1;
    }

    // TODO : Here we set `N` to 1.
    TMACGeMMConfig config = get_kcfg(M_, K_, this -> N_kernel, nbits_);
    if (config.bm == -1) {
        LOG(FATAL)  << "Cannot find the configuration for the given TMAC parameters"
                    << " (M, K, N, nbits) = (" << M_ << ", " << K_ << ", " << this -> N_kernel << ", " << nbits_ << ")";
    }
    // std::cout << "TMAC Configuration: " << config << std::endl;
    this -> bm_ = config.bm;
    this -> g_ = 4;
    this -> group_size_ = config.group_size;
    this -> act_group_size_ = 64;
    this -> kfactor_ = config.kfactor;

#ifdef USE_TVM_LIB
    if (TMACMatmul::_tvm_internals == nullptr) {
        TMACMatmul::_tvm_internals = new TVMInternals();
#ifdef TMAC_USE_SYSLIB
            _tvm_internals -> _mod_lib = (*tvm::runtime::Registry::Get("runtime.SystemLib"))();
#else
            LOG(INFO) << "Loading kernels from: " << get_library_file(library_file);
            _tvm_internals -> _mod_lib = tvm::runtime::Module::LoadFromFile(get_library_file(library_file));
#endif

#ifdef USE_TVM_THREADPOOL
            _tvm_internals -> _config_threadpool = tvm::runtime::Registry::Get("runtime.config_threadpool");
            set_num_threads(_n_threads);
#else

#endif
            _tvm_internals -> pf = get_function(
                TMACMatmul::_tvm_internals,
                this -> _m, 
                this -> get_template_name({M_, K_, this -> N_kernel, nbits_, 0}),
                {M_, K_, this -> N_kernel, nbits_, 0}
            );
            _tvm_internals -> qf = get_function(
                TMACMatmul::_tvm_internals, 
                this -> _m, 
#if defined(USE_TVM_LIB) && !defined(USE_TVM_THREADPOOL)
                //! This `bm_ /  nbits_` is for name valid.
                this -> get_template_name({bm_, K_, this -> N_kernel, nbits_, 1}),
#else
                this -> get_template_name({M_, K_, this -> N_kernel, nbits_, 1}),
#endif
                {M_, K_, this -> N_kernel, nbits_, 1}
            );
    }
#endif

    this -> set_workspace(M_, K_, N_);
}

TMACMatmul::~TMACMatmul() {
    free(this -> _qlut);
    free(this -> _lut_scales);
    free(this -> _lut_biases);
}

/**
 * @brief 计算T-MAC矩阵乘法
 * 
 * @param packed_qweight    (inputs[0])     量化权重矩阵
 * @param activations       (inputs[1])     激活矩阵
 * @param Scales_t          (inputs[2])     缩放因子
 * @param outputs           (outputs[0])    输出矩阵
 */
void TMACMatmul::eval_cpu(const std::vector<array>& inputs, array& output) {
    output.set_data(allocator::malloc_or_wait(output.nbytes()));
    std::memset(output.data<void>(), 0, output.nbytes());
    if (inputs[0].shape(-1) == 0 || inputs[1].shape(-1) == 0) {
        //! Not Allocated.
        return;
    }

    assert(_allocated);

    int ngroups_per_elem = 8 / this->g_;

#ifdef USE_TVM_THREADPOOL
    //! =========================================================================================================================

    // 修正缓冲区转换方式
    auto activations_buf = inputs[0].data<float16_t>();
    auto qweight_buf = inputs[1].data<uint8_t>();
    auto scales_buf = inputs[2].data<float16_t>();
    auto output_buf = output.data<float16_t>();

    int64_t A_shape[3] = {M_ / bm_, K_, bm_ / ngroups_per_elem};
    int64_t Scales_shape[3] = {M_ / bm_, K_ / group_size_, bm_ / nbits_};
    int64_t activations_shape[2] = {N_, K_};
    int64_t output_shape[2] = {N_, M_};
    int64_t C_tile_shape[2] = {N_kernel, M_};
    int64_t qlut_shape[3] = {N_, K_ / g_, (1 << g_)};
    int64_t luts_shape[3] = {N_, K_ / act_group_size_};

    const DLDevice cpu_dev = {
        /* .device_type = */ kDLCPU,
        /* .device_id   = */ 0,
    };
    const DLDataType int_dtype = {
        /* .code  = */ kDLInt,
        /* .bits  = */ 8,
        /* .lanes = */ 1,
    };
    const DLDataType float_dtype = {
        /* .code  = */ kDLFloat,
        /* .bits  = */ sizeof(float16_t) * 8,
        /* .lanes = */ 1,
    };

    DLTensor B = {
        /*.data   = */ (void *)activations_buf,
        /*.device = */ cpu_dev,
        /*.ndim   = */ 2,
        /*.dtype  = */ float_dtype,
        /*.shape  = */ activations_shape,
    };

    DLTensor A = {
        /*.data   = */ (void *)qweight_buf,
        /*.device = */ cpu_dev,
        /*.ndim   = */ 3,
        /*.dtype  = */ int_dtype,
        /*.shape  = */ A_shape,
    };

    DLTensor Scales = {
        /*.data   = */ (void *)scales_buf,
        /*.device = */ cpu_dev,
        /*.ndim   = */ 3,
        /*.dtype  = */ float_dtype,
        /*.shape  = */ Scales_shape,
    };
    
    DLTensor C = {
        /*.data   = */ (void *)output_buf,
        /*.device = */ cpu_dev,
        /*.ndim   = */ 2,
        /*.dtype  = */ float_dtype,
        /*.shape  = */ output_shape,
    };

    DLTensor QLUTt = {
        /* .data   = */ this -> _qlut,
        /* .device = */ cpu_dev,
        /* .ndim   = */ 3,
        /* .dtype  = */ int_dtype,
        /* .shape  = */ qlut_shape,
    };
    DLTensor LUTSt = {
        /* .data   = */ this -> _lut_scales,
        /* .device = */ cpu_dev,
        /* .ndim   = */ 2,
        /* .dtype  = */ float_dtype,
        /* .shape  = */ luts_shape,
    };
    DLTensor LUTBt = {
        /* .data   = */ this -> _lut_biases,
        /* .device = */ cpu_dev,
        /* .ndim   = */ 2,
        /* .dtype  = */ float_dtype,
        /* .shape  = */ luts_shape,
    };

    std::vector<DLTensor> C_tiles;
    int N_tiles = (N_ + N_kernel - 1) / N_kernel;
    for (int n_idx = 0; n_idx < N_tiles; n_idx++) {
        DLTensor C_tile = {
            /* .data   = */ (void *)(output_buf + n_idx * N_kernel * K_),
            /* .device = */ cpu_dev,
            /* .ndim   = */ 2,
            /* .dtype  = */ float_dtype,
            /* .shape  = */ C_tile_shape
        };
        C_tiles.push_back(C_tile);
    }

    (_tvm_internals -> pf)(&B, &LUTSt, &LUTBt, &QLUTt);
    for(int i = 0; i < N_tiles; i++) {
        (_tvm_internals -> qf)(&A, &QLUTt, &Scales, &LUTSt, &LUTBt, &C_tiles[i]);
    }
    
#else
    //! ============= Turn to void pointer. =============
    // 修正缓冲区转换方式
    auto activations_buf = inputs[0].data<float16_t>();
    auto qweight_buf = inputs[1].data<uint8_t>();
    auto scales_buf = inputs[2].data<float16_t>();
    auto output_buf = output.data<float16_t>();

#ifdef USE_TVM_LIB
    int64_t A_shape[3] = {M_ / bm_, K_, bm_ / ngroups_per_elem};
    int64_t Scales_shape[3] = {M_ / bm_, K_ / group_size_, bm_ / nbits_};
    int64_t activations_shape[2] = {N_, K_};
    int64_t activation_bn_shape[2] = {1, K_};  // TODO : Now we only support batch size = 1.
    int64_t output_shape[2] = {N_, M_};
    int64_t qlut_shape[3] = {N_, K_ / g_, (1 << g_)};
    int64_t luts_shape[3] = {N_, K_ / act_group_size_};

    int64_t A_tile_shape[3] = {nbits_, K_ / g_, bm_ / ngroups_per_elem};
    int64_t C_tile_shape[2] = {1, bm_};     // TODO : Change this `1` to batch processing.

    const DLDevice cpu_dev = {
        /* .device_type = */ kDLCPU,
        /* .device_id   = */ 0,
    };
    const DLDataType int_dtype = {
        /* .code  = */ kDLInt,
        /* .bits  = */ 8,
        /* .lanes = */ 1,
    };
    const DLDataType float_dtype = {
        /* .code  = */ kDLFloat,
        /* .bits  = */ sizeof(float16_t) * 8,
        /* .lanes = */ 1,
    };

    DLTensor B = {
        /*.data   = */ (void *)activations_buf,
        /*.device = */ cpu_dev,
        /*.ndim   = */ 2,
        /*.dtype  = */ float_dtype,
        /*.shape  = */ activations_shape,
    };
    DLTensor A = {
        /*.data   = */ (void *)qweight_buf,
        /*.device = */ cpu_dev,
        /*.ndim   = */ 3,
        /*.dtype  = */ int_dtype,
        /*.shape  = */ A_shape,
    };
    DLTensor Scales = {
        /*.data   = */ (void *)scales_buf,
        /*.device = */ cpu_dev,
        /*.ndim   = */ 3,
        /*.dtype  = */ float_dtype,
        /*.shape  = */ Scales_shape,
    };
    DLTensor C = {
        /*.data   = */ (void *)output_buf,
        /*.device = */ cpu_dev,
        /*.ndim   = */ 2,
        /*.dtype  = */ float_dtype,
        /*.shape  = */ output_shape,
    };
    DLTensor QLUTt = {
        /* .data   = */ this -> _qlut,
        /* .device = */ cpu_dev,
        /* .ndim   = */ 3,
        /* .dtype  = */ int_dtype,
        /* .shape  = */ qlut_shape,
    };
    DLTensor LUTSt = {
        /* .data   = */ this -> _lut_scales,
        /* .device = */ cpu_dev,
        /* .ndim   = */ 2,
        /* .dtype  = */ float_dtype,
        /* .shape  = */ luts_shape,
    };
    DLTensor LUTBt = {
        /* .data   = */ this -> _lut_biases,
        /* .device = */ cpu_dev,
        /* .ndim   = */ 2,
        /* .dtype  = */ float_dtype,
        /* .shape  = */ luts_shape,
    };

#endif
    std::vector<DLTensor> A_tiles;
    for (int m_tile_idx = 0; m_tile_idx < this->M_ / (this->bm_ / ngroups_per_elem); m_tile_idx++) {
        DLTensor A_tile = {
            /* .data   = */ (void *)(qweight_buf + nbits_ * (K_ / g_) * m_tile_idx * bm_ / ngroups_per_elem),
            /* .device = */ cpu_dev,
            /* .ndim   = */ 3,
            /* .dtype  = */ int_dtype,
            /* .shape  = */ A_tile_shape
        };
        A_tiles.push_back(A_tile);
    }

    std::vector<DLTensor> C_tiles;
    for(int n_idx = 0; n_idx < N_; n_idx++) {
        for (int m_tile_idx = 0; m_tile_idx < this->M_ / (this->bm_ / ngroups_per_elem); m_tile_idx++) {
            DLTensor C_tile = {
                /* .data   = */ (void *)(output_buf + m_tile_idx * this->bm_ + n_idx * K_),
                /* .device = */ cpu_dev,
                /* .ndim   = */ 2,
                /* .dtype  = */ float_dtype,
                /* .shape  = */ C_tile_shape
            };
            C_tiles.push_back(C_tile);
        }
    }

    std::vector<std::future<int>> tiles;    // TODO : Working set.
    for(int n_idx = 0; n_idx < N_; n_idx++) {
#ifdef USE_TVM_LIB
        DLTensor B_row = {
            /* .data   = */ (void *)(activations_buf + n_idx * K_),
            /* .device = */ cpu_dev,
            /* .ndim   = */ 2,
            /* .dtype  = */ float_dtype,
            /* .shape  = */ activation_bn_shape
        };

        (_tvm_internals -> pf)(&B_row, &LUTSt, &LUTBt, &QLUTt);

#else
        // 修正函数调用参数
        int err_no = preprocessor_int8(
            this->M_ * this->nbits_,
            this->K_,
            this->N_,
            this->nbits_,
            (void*)activations_buf,
            (void*)this->_lut_scales,
            (void*)this->_lut_biases,
            (void*)this->_qlut
        );
        if (err_no != 0) {
            std::cout << "preprocessor_int8 failed with Parameters : " <<
            "m = " << this->bm_ <<
            ", k = " << this->K_ <<
            ", n = " << this->N_ <<
            ", b = " << this->nbits_ << std::endl;
            return;   
        }
#endif
        // std::cout << "preprocessor_int8 done!" << std::endl;
        // std::cout << "QLUT: " << QLUT << "shape : " << QLUT.shape() << std::endl;
        // std::cout << "LUT_Scales: " << LUT_Scales << "shape : " << LUT_Scales.shape() << std::endl;
        // std::cout << "LUT_Biases: " << LUT_Biases << "shape : " << LUT_Biases.shape() << std::endl;
        // std::cout << "qgemm_output: " << qgemm_output << "shape : " << qgemm_output.shape() << std::endl;
        // std::cout << "Scales :" << inputs[2] << "shape : " << inputs[2].shape() << std::endl;

#ifdef USE_TVM_LIB
        for(int m_tile_idx = 0; m_tile_idx < this->M_ / (this->bm_); m_tile_idx++) {
        // for(int m_tile_idx = 0; m_tile_idx < 1; m_tile_idx++) {
            // (_tvm_internals -> qf)(&A, &QLUTt, &Scales, &LUTSt, &LUTBt, &C);
            tiles.emplace_back(TMACMatmul::_thread_pool.enqueue(
                [this, &A_tiles, &QLUTt, &Scales, &LUTSt, &LUTBt, &C_tiles, m_tile_idx, n_idx, ngroups_per_elem]() -> int {
                    (_tvm_internals -> qf)(&A_tiles[m_tile_idx], &QLUTt, &Scales, &LUTSt, &LUTBt, &C_tiles[m_tile_idx + n_idx * this->M_ / (this->bm_ / ngroups_per_elem)]);
                    return 0;
                }
            ));
        }
#else
        for(int m_tile_idx = 0; m_tile_idx < this->M_ / (this->bm_ / ngroups_per_elem); m_tile_idx++) {
            tiles.emplace_back(TMACMatmul::_thread_pool.enqueue(
                std::bind(
                    &qgemm_lut_int8,
                    this->bm_,
                    this->K_,
                    this->N_,
                    this->nbits_,
                    (void *)(qweight_buf + (this->K_ / this->g_) * m_tile_idx * this->bm_ / ngroups_per_elem), 
                    (void *)this->_qlut,
                    (void *)scales_buf,
                    (void *)this->_lut_scales,
                    (void *)this->_lut_biases, 
                    (void *)(output_buf + m_tile_idx * this->bm_ / ngroups_per_elem)
                )
            ));
        }
#endif
    }

    // TODO : This is too SLOW, change it to sync thread.
    for (auto& tile : tiles) {
        tile.wait();
    }

#endif

}

std::string TMACMatmul::get_template_name(_fkey key)
{
    if (std::get<4>(key) != 0) {
        return
        std::string("qgemm_lut")
#if defined(USE_TVM_LIB) && !defined(USE_TVM_THREADPOOL)
            + "_t" + std::to_string(1)
#else
            + "_t" + std::to_string(_n_threads)
#endif
            + "_int8"
            + "_m" + std::to_string(std::get<0>(key) * std::get<3>(key))
            + "_k" + std::to_string(std::get<1>(key))
            + "_n" + std::to_string(std::get<2>(key))
            + "_b" + std::to_string(std::get<3>(key));
    } else {
        return
        std::string("preprocessor")
#if defined(USE_TVM_LIB) && !defined(USE_TVM_THREADPOOL)
            + "_t" + std::to_string(1)
#else
            + "_t" + std::to_string(_n_threads)
#endif
            + "_int8"
            + "_m" + std::to_string(std::get<0>(key) * std::get<3>(key))
            + "_k" + std::to_string(std::get<1>(key))
            + "_n" + std::to_string(std::get<2>(key))
            + "_b" + std::to_string(std::get<3>(key));
    }
}

TMACGeMMConfig TMACMatmul::get_kcfg(int M, int K, int N, int bits)
{
    // TODO: find a better way to find kcfg when _n_threads is unknown
    const std::vector<int> n_threads_hints = {1, 4, 8, 12, 16};
    std::string section;
    int old_n_threads = _n_threads;
    for (int n_threads : n_threads_hints) {
        _n_threads = n_threads;
        section = get_template_name({M, K, N, bits, 1});
        if (_reader -> Sections().count(section) > 0) {
            break;
        }
    }
    _n_threads = old_n_threads;

    return {
        /* .bm              = */ (int)_reader -> GetInteger(section, "bm", -1),
        /* .simd_n_in       = */ (int)_reader -> GetInteger(section, "simd_n_in", 0),
        /* .simd_n_out      = */ (int)_reader -> GetInteger(section, "simd_n_out", 0),
        /* .kfactor         = */ (int)_reader -> GetInteger(section, "kfactor", 0),
        /* .group_size      = */ (int)_reader -> GetInteger(section, "group_size", 0),
        /* .lut_scales_size = */ (int)_reader -> GetInteger(section, "lut_scales_size", 0),
        /* .scales_size     = */ (int)_reader -> GetInteger(section, "scales_size", 0),
        /* .n_tile_num      = */ (int)_reader -> GetInteger(section, "n_tile_num", 0),
    };
}

// Should only be called in main thread
void TMACMatmul::set_workspace(int maxM, int maxK, int maxN)
{
    int ngroups_per_elem = 8 / g_;
#if defined(_WIN32)
    // A_t = _aligned_malloc(maxM / bm_ * maxK / g_ * bm_ / ngroups_per_elem * sizeof(uint8_t), kAllocAlignment);
    // Scales_t = _aligned_malloc(maxM / bm_ * maxK / group_size_ * bm_ / nbits_ * sizeof(float16_t), kAllocAlignment);
    // B_t = _aligned_malloc(maxN * maxK * sizeof(float16_t), kAllocAlignment);
    // C_t = _aligned_malloc(maxN * maxM * sizeof(float16_t), kAllocAlignment);
    _qlut = _aligned_malloc(maxN * maxK / g_ * (1 << g_) * sizeof(int8_t), kAllocAlignment);
    _lut_scales = _aligned_malloc(maxN * maxK / act_group_size_ * sizeof(float16_t), kAllocAlignment);
    _lut_biases = _aligned_malloc(maxN * maxK / act_group_size_ * sizeof(float16_t), kAllocAlignment);
#else
    // posix_memalign(&A_t, kAllocAlignment, maxM / bm_ * maxK / g_ * bm_ / ngroups_per_elem * sizeof(uint8_t));
    // posix_memalign(&Scales_t, kAllocAlignment, maxM / bm_ * maxK / group_size_ * bm_ / nbits_ * sizeof(float16_t));
    // posix_memalign(&B_t, kAllocAlignment, maxN * maxK * sizeof(float16_t));
    // posix_memalign(&C_t, kAllocAlignment, maxN * maxM * sizeof(float16_t));
    posix_memalign(&_qlut, kAllocAlignment, maxN * maxK / g_ * (1 << g_) * sizeof(int8_t));
    posix_memalign(&_lut_scales, kAllocAlignment, maxN * maxK / act_group_size_ * sizeof(float16_t));
    posix_memalign(&_lut_biases, kAllocAlignment, maxN * maxK / act_group_size_ * sizeof(float16_t));
#endif
    _allocated = true;
}

void TMACMatmul::set_num_threads(int n_threads) {
#ifdef USE_TVM_THREADPOOL
    if (n_threads != _n_threads) {
        _n_threads = n_threads;
        (*(_tvm_internals -> _config_threadpool))(1, _n_threads);
        int num_threads = (*tvm::runtime::Registry::Get("runtime.NumThreads"))();
        LOG(INFO) << "NUM_THREADS: " << num_threads;
    }
#endif
}

} // namespace mlx::core

