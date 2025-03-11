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

#include <mlx/backend/cpu/tmac/kernels.h>
#include <mlx/threadpool.h>
#include <mlx/backend/cpu/tmac_gemv.h>

#define milliseconds(x) \
  (std::chrono::duration_cast<std::chrono::nanoseconds>(x).count() / 1e6)
#define time_now() std::chrono::high_resolution_clock::now()

namespace mlx::core {

struct TVMInternals {
    tvm::runtime::Module _mod_lib;
    std::map<_fkey, tvm::runtime::PackedFunc> _fcache;
    const tvm::runtime::PackedFunc* _config_threadpool;
    tvm::runtime::PackedFunc pf;
    tvm::runtime::PackedFunc qf;
};

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

#undef STR
#undef QUOTE

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
template <typename T, int g>
TMACGeMMWrapper<T, g>::TMACGeMMWrapper(int n_threads, int act_group_size, const std::string& kcfg_file, const std::string& library_file)
    : _n_threads(0),
      _act_group_size(act_group_size),
      _allocated(false),
      _reader(get_kcfg_file(kcfg_file)) {
    _tvm_internals = new TVMInternals();
#ifdef TMAC_USE_SYSLIB
    _tvm_internals -> _mod_lib = (*tvm::runtime::Registry::Get("runtime.SystemLib"))();
#else
    LOG(INFO) << "Loading kernels from: " << get_library_file(library_file);
    _tvm_internals -> _mod_lib = tvm::runtime::Module::LoadFromFile(get_library_file(library_file));
#endif
    _tvm_internals -> _config_threadpool = tvm::runtime::Registry::Get("runtime.config_threadpool");
    set_num_threads(n_threads);
}

template <typename T, int g>
TMACGeMMWrapper<T, g>::~TMACGeMMWrapper() {
    if (_allocated) {
#if defined(_WIN32)
        _aligned_free(_qlut);
        _aligned_free(_lut_scales);
        _aligned_free(_lut_biases);
#else
        free(_qlut);
        free(_lut_scales);
        free(_lut_biases);
#endif
    }
}

template <typename T, int g>
void TMACGeMMWrapper<T, g>::set_num_threads(int n_threads) {
    if (n_threads != _n_threads) {
        _n_threads = n_threads;
        (*(_tvm_internals -> _config_threadpool))(1, _n_threads);
        int num_threads = (*tvm::runtime::Registry::Get("runtime.NumThreads"))();
        LOG(INFO) << "NUM_THREADS: " << num_threads;
    }
}

// template <typename T, int g>
// void TMACGeMMWrapper<T, g>::run(DLTensor* A, DLTensor* scales, DLTensor* B, DLTensor* C, int M, int K, int N, int bits) {
//     assert(_allocated);

//     int64_t qlut_shape[3] = {N, K / g, (1 << g)};
//     int64_t luts_shape[3] = {N, K / _act_group_size};

//     const DLDevice cpu_dev = {
//         /* .device_type = */ kDLCPU,
//         /* .device_id   = */ 0,
//     };
//     const DLDataType int_dtype = {
//         /* .code  = */ kDLInt,
//         /* .bits  = */ 8,
//         /* .lanes = */ 1,
//     };
//     const DLDataType float_dtype = {
//         /* .code  = */ kDLFloat,
//         /* .bits  = */ sizeof(T) * 8,
//         /* .lanes = */ 1,
//     };

//     DLTensor QLUTt = {
//         /* .data   = */ _qlut,
//         /* .device = */ cpu_dev,
//         /* .ndim   = */ 3,
//         /* .dtype  = */ int_dtype,
//         /* .shape  = */ qlut_shape,
//     };
//     DLTensor LUTSt = {
//         /* .data   = */ _lut_scales,
//         /* .device = */ cpu_dev,
//         /* .ndim   = */ 2,
//         /* .dtype  = */ float_dtype,
//         /* .shape  = */ luts_shape,
//     };
//     DLTensor LUTBt = {
//         /* .data   = */ _lut_biases,
//         /* .device = */ cpu_dev,
//         /* .ndim   = */ 2,
//         /* .dtype  = */ float_dtype,
//         /* .shape  = */ luts_shape,
//     };

//     tvm::runtime::PackedFunc pf = get_function(this -> _tvm_internals, {M, K, N, bits, 0});
//     tvm::runtime::PackedFunc qf = get_function(this -> _tvm_internals, {M, K, N, bits, 1});

//     // Currently the parallelism of preprocessor is disabled due to large thread communication overhead in `benchmark.cc`.
//     // But according to profiled results of python side, the overhead is not that large and the best NUM_THREADS should be 4.
//     // TODO: Find out the reason for the high communication overhead in C++ side.
//     pf(B, &LUTSt, &LUTBt, &QLUTt);
//     qf(A, &QLUTt, scales, &LUTSt, &LUTBt, C);
// }

template <typename T, int g>
TMACGeMMConfig TMACGeMMWrapper<T, g>::get_kcfg(int M, int K, int N, int bits)
{
    // TODO: find a better way to find kcfg when _n_threads is unknown
    const std::vector<int> n_threads_hints = {1, 4, 8, 12, 16};
    std::string section;
    int old_n_threads = _n_threads;
    for (int n_threads : n_threads_hints) {
        _n_threads = n_threads;
        section = get_template_name({M, K, N, bits, 1});
        std::cout << "section: " << section << std::endl;
        if (_reader.Sections().count(section) > 0) {
        break;
        }
    }
    _n_threads = old_n_threads;

    return {
        /* .bm              = */ (int)_reader.GetInteger(section, "bm", 0),
        /* .simd_n_in       = */ (int)_reader.GetInteger(section, "simd_n_in", 0),
        /* .simd_n_out      = */ (int)_reader.GetInteger(section, "simd_n_out", 0),
        /* .kfactor         = */ (int)_reader.GetInteger(section, "kfactor", 0),
        /* .group_size      = */ (int)_reader.GetInteger(section, "group_size", 0),
        /* .lut_scales_size = */ (int)_reader.GetInteger(section, "lut_scales_size", 0),
        /* .scales_size     = */ (int)_reader.GetInteger(section, "scales_size", 0),
        /* .n_tile_num      = */ (int)_reader.GetInteger(section, "n_tile_num", 0),
    };
}

// Should only be called in main thread
template <typename T, int g>
void TMACGeMMWrapper<T, g>::set_workspace(int maxK, int maxN)
{
#if defined(_WIN32)
    _qlut = _aligned_malloc(maxN * maxK / g * (1 << g) * sizeof(int8_t), kAllocAlignment);
    _lut_scales = _aligned_malloc(maxN * maxK / _act_group_size * sizeof(T), kAllocAlignment);
    _lut_biases = _aligned_malloc(maxN * maxK / _act_group_size * sizeof(T), kAllocAlignment);
#else
    posix_memalign(&_qlut, kAllocAlignment, maxN * maxK / g * (1 << g) * sizeof(int8_t));
    posix_memalign(&_lut_scales, kAllocAlignment, maxN * maxK / _act_group_size * sizeof(T));
    posix_memalign(&_lut_biases, kAllocAlignment, maxN * maxK / _act_group_size * sizeof(T));
#endif
    _allocated = true;
}
    


template <typename T, int g>
std::string TMACGeMMWrapper<T, g>::get_template_name(_fkey key)
{
    if (std::get<4>(key) != 0) {
        return
        std::string("qgemm_lut")
            + "_t" + std::to_string(_n_threads)
            + "_int8"
            + "_m" + std::to_string(std::get<0>(key) * std::get<3>(key))
            + "_k" + std::to_string(std::get<1>(key))
            + "_n" + std::to_string(std::get<2>(key))
            + "_b" + std::to_string(std::get<3>(key));
    } else {
        return
        std::string("preprocessor")
            + "_t" + std::to_string(_n_threads)
            + "_int8"
            + "_m" + std::to_string(std::get<0>(key) * std::get<3>(key))
            + "_k" + std::to_string(std::get<1>(key))
            + "_n" + std::to_string(std::get<2>(key))
            + "_b" + std::to_string(std::get<3>(key));
    }
}

// DLTensor* MLXArrayToDLTensor(const array& arr) {
//     DLTensor* tensor = new DLTensor;
    
//     // 设置设备类型
//     tensor->device = DLDevice{kDLCPU, 0};  // 假设数据在CPU
    
//     // 设置形状
//     tensor->ndim = arr.ndim();
//     tensor->shape = new int64_t[arr.ndim()];
//     std::copy(arr.shape().begin(), arr.shape().end(), tensor->shape);
    
//     // 共享数据指针
//     tensor->data = const_cast<void*>(arr.data<void>());
    
//     return tensor;
// }


TMACMatmul::TMACMatmul(
    Stream stream, 
    int n_threads, int act_group_size, const std::string& kcfg_file, const std::string& library_file,
    int M, int K, int N, int group_size, int kfactor, int g, int bm, int nbits)
    : UnaryPrimitive(stream),
    M_(M), K_(K), N_(N), act_group_size_(act_group_size), group_size_(group_size), 
    bm_(bm), g_(g), kfactor_(kfactor), nbits_(nbits), _n_threads(n_threads) {
    
    if (TMACMatmul::_tvm_internals == nullptr) {
        TMACMatmul::_tvm_internals = new TVMInternals();
#ifdef TMAC_USE_SYSLIB
            _tvm_internals -> _mod_lib = (*tvm::runtime::Registry::Get("runtime.SystemLib"))();
#else
            LOG(INFO) << "Loading kernels from: " << get_library_file(library_file);
            _tvm_internals -> _mod_lib = tvm::runtime::Module::LoadFromFile(get_library_file(library_file));
#endif
            _tvm_internals -> _config_threadpool = tvm::runtime::Registry::Get("runtime.config_threadpool");
            set_num_threads(n_threads);

            _tvm_internals -> pf = get_function(
                TMACMatmul::_tvm_internals,
                this -> _m, 
                this -> get_template_name({M_, K_, N_, nbits_, 0}),
                {M_, K_, N_, nbits_, 0}
            );
            _tvm_internals -> qf = get_function(
                TMACMatmul::_tvm_internals, 
                this -> _m, 
                this -> get_template_name({M_, K_, N_, nbits_, 1}),
                {M_, K_, N_, nbits_, 1}
            );
    }

    if (TMACMatmul::_reader == nullptr) {
        TMACMatmul::_reader = new INIReader(get_kcfg_file(kcfg_file));
    }


    this -> set_workspace(K_, N_);
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

    // 修正缓冲区转换方式
    auto activations_buf = inputs[0].data<float16_t>();
    auto qweight_buf = inputs[1].data<uint8_t>();
    auto scales_buf = inputs[2].data<float16_t>();
    // auto qlut_buf = QLUT.data<uint8_t>();
    // auto lut_scales_buf = LUT_Scales.data<float16_t>();
    // auto lut_biases_buf = LUT_Biases.data<float16_t>();
    auto output_buf = output.data<float16_t>();
    
    TMACGeMMConfig _config = this -> get_kcfg(
        this -> M_,
        this -> K_,
        this -> N_,
        this -> nbits_
    );

    // std::cout << _config << std::endl;

    assert(_allocated);

    //! =========================================================================================================================

    int ngroups_per_elem = 8 / g_;

    // int64_t A_shape[3] = {M_ / bm_, K_, bm_ / ngroups_per_elem};
    // int64_t Scales_shape[3] = {M_ / bm_, K_ / group_size_, bm_ / nbits_};
    // int64_t activations_shape[2] = {N_, K_};
    // int64_t output_shape[2] = {N_, M_};
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

    // DLTensor B = {
    //     /*.data   = */ (void *)activations_buf,
    //     /*.device = */ cpu_dev,
    //     /*.ndim   = */ 2,
    //     /*.dtype  = */ float_dtype,
    //     /*.shape  = */ activations_shape,
    // };

    // DLTensor A = {
    //     /*.data   = */ (void *)qweight_buf,
    //     /*.device = */ cpu_dev,
    //     /*.ndim   = */ 3,
    //     /*.dtype  = */ int_dtype,
    //     /*.shape  = */ A_shape,
    // };

    // DLTensor Scales = {
    //     /*.data   = */ (void *)scales_buf,
    //     /*.device = */ cpu_dev,
    //     /*.ndim   = */ 3,
    //     /*.dtype  = */ float_dtype,
    //     /*.shape  = */ Scales_shape,
    // };
    
    // DLTensor C = {
    //     /*.data   = */ (void *)output_buf,
    //     /*.device = */ cpu_dev,
    //     /*.ndim   = */ 2,
    //     /*.dtype  = */ float_dtype,
    //     /*.shape  = */ output_shape,
    // };

    // Print the data of tensor B
    // std::cout << "Data of tensor B:" << std::endl;
    // for (int i = 0; i < B.shape[0]; ++i) {
    //     for (int j = 0; j < B.shape[1]; ++j) {
    //         size_t index = i * B.shape[1] + j;
    //         float16_t* data_ptr = static_cast<float16_t*>(B.data);
    //         std::cout << static_cast<float>(data_ptr[index]) << " ";
    //     }
    //     std::cout << std::endl;
    // }

    void* _qlut = nullptr;
    void* _lut_scales = nullptr;
    void* _lut_biases = nullptr;

    posix_memalign(&_qlut, kAllocAlignment, N_ * K_ / g_ * (1 << g_) * sizeof(int8_t));
    posix_memalign(&_lut_scales, kAllocAlignment, N_ * K_ / act_group_size_ * sizeof(float16_t));
    posix_memalign(&_lut_biases, kAllocAlignment, N_ * K_ / act_group_size_ * sizeof(float16_t));


    // TODO : This void* pointer should be allocated by the caller.
    DLTensor QLUTt = {
        /* .data   = */ _qlut,
        /* .device = */ cpu_dev,
        /* .ndim   = */ 3,
        /* .dtype  = */ int_dtype,
        /* .shape  = */ qlut_shape,
    };
    DLTensor LUTSt = {
        /* .data   = */ _lut_scales,
        /* .device = */ cpu_dev,
        /* .ndim   = */ 2,
        /* .dtype  = */ float_dtype,
        /* .shape  = */ luts_shape,
    };
    DLTensor LUTBt = {
        /* .data   = */ _lut_biases,
        /* .device = */ cpu_dev,
        /* .ndim   = */ 2,
        /* .dtype  = */ float_dtype,
        /* .shape  = */ luts_shape,
    };

    DLTensor* A;
    DLTensor* Scales;
    DLTensor* B;
    DLTensor* C;
  
    int64_t A_shape[3] = {M_ * nbits_ / bm_, K_ / g_, bm_ / 2};
    int64_t scales_shape[3] = {M_ * nbits_ / bm_, K_ / group_size_, bm_ / nbits_};
    int64_t B_shape[3] = {N_, K_};
    int64_t C_shape[3] = {N_, M_};
    TVMArrayAlloc(B_shape, 2, kDLFloat, 16, 1, kDLCPU, 0, &B);
    TVMArrayAlloc(A_shape, 3, kDLUInt, 8, 1, kDLCPU, 0, &A);
    TVMArrayAlloc(scales_shape, 3, kDLFloat, 16, 1, kDLCPU, 0, &Scales);
    TVMArrayAlloc(C_shape, 2, kDLFloat, 16, 1, kDLCPU, 0, &C);

    // tvm::runtime::PackedFunc pf = get_function(
    //     TMACMatmul::_tvm_internals,
    //     this -> _m, 
    //     this -> get_template_name({M_, K_, N_, nbits_, 0}),
    //     {M_, K_, N_, nbits_, 0}
    // );
    // tvm::runtime::PackedFunc qf = get_function(
    //     TMACMatmul::_tvm_internals, 
    //     this -> _m, 
    //     this -> get_template_name({M_, K_, N_, nbits_, 1}),
    //     {M_, K_, N_, nbits_, 1}
    // );

    // Currently the parallelism of preprocessor is disabled due to large thread communication overhead in `benchmark.cc`.
    // But according to profiled results of python side, the overhead is not that large and the best NUM_THREADS should be 4.
    // TODO: Find out the reason for the high communication overhead in C++ side.
    for (int i = 0; i < 100; i++) {
        // 修改前：
        // (_tvm_internals -> pf)(B, &LUTSt, &LUTBt, &QLUTt);
        // (_tvm_internals -> qf)(A, &QLUTt, Scales, &LUTSt, &LUTBt, C);
        
        // 修改后：
        // (_tvm_internals -> pf)(B, &LUTSt, &LUTBt, &QLUTt);
        // (_tvm_internals -> qf)(A, &QLUTt, Scales, &LUTSt, &LUTBt, C);
    }
}

std::string TMACMatmul::get_template_name(_fkey key)
{
    if (std::get<4>(key) != 0) {
        return
        std::string("qgemm_lut")
            + "_t" + std::to_string(_n_threads)
            + "_int8"
            + "_m" + std::to_string(std::get<0>(key) * std::get<3>(key))
            + "_k" + std::to_string(std::get<1>(key))
            + "_n" + std::to_string(std::get<2>(key))
            + "_b" + std::to_string(std::get<3>(key));
    } else {
        return
        std::string("preprocessor")
            + "_t" + std::to_string(_n_threads)
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
        /* .bm              = */ (int)_reader -> GetInteger(section, "bm", 0),
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
void TMACMatmul::set_workspace(int maxK, int maxN)
{
#if defined(_WIN32)
    _qlut = _aligned_malloc(maxN * maxK / g_ * (1 << g_) * sizeof(int8_t), kAllocAlignment);
    _lut_scales = _aligned_malloc(maxN * maxK / act_group_size_ * sizeof(float16_t), kAllocAlignment);
    _lut_biases = _aligned_malloc(maxN * maxK / act_group_size_ * sizeof(float16_t), kAllocAlignment);
#else
    posix_memalign(&_qlut, kAllocAlignment, maxN * maxK / g_ * (1 << g_) * sizeof(int8_t));
    posix_memalign(&_lut_scales, kAllocAlignment, maxN * maxK / act_group_size_ * sizeof(float16_t));
    posix_memalign(&_lut_biases, kAllocAlignment, maxN * maxK / act_group_size_ * sizeof(float16_t));
#endif
    _allocated = true;
}

void TMACMatmul::set_num_threads(int n_threads) {
    if (n_threads != _n_threads) {
        _n_threads = n_threads;
        (*(_tvm_internals -> _config_threadpool))(1, _n_threads);
        int num_threads = (*tvm::runtime::Registry::Get("runtime.NumThreads"))();
        LOG(INFO) << "NUM_THREADS: " << num_threads;
    }
}


// template class TMACGeMMWrapper<float, 4>;
// 取消注释并添加half类型的实例化
template class TMACGeMMWrapper<float16_t, 4>;
// template class TMACGeMMWrapper<half, 4>;  // 新增half类型实例化

// Initialize the static member variable
TVMInternals* TMACMatmul::_tvm_internals = nullptr;
INIReader* TMACMatmul::_reader = nullptr;

} // namespace mlx::core


//! ====================================================================================================

//! =============      Allocate vars.   =============
// array QLUT = inputs[3];
// array LUT_Scales = inputs[4];
// array LUT_Biases = inputs[5];
// QLUT.set_data(allocator::malloc_or_wait(QLUT.nbytes()));
// LUT_Scales.set_data(allocator::malloc_or_wait(LUT_Scales.nbytes()));
// LUT_Biases.set_data(allocator::malloc_or_wait(LUT_Biases.nbytes()));
// array QLUT = zeros({this -> N_, this -> K_ / this -> g_, 1 << this -> g_}, int8);
// array LUT_Scales = zeros({this -> N_, this -> K_ / this -> act_group_size_}, float16);
// array LUT_Biases = zeros({this -> N_, this -> K_ / this -> act_group_size_}, float16);
// QLUT.eval();
// LUT_Scales.eval();
// LUT_Biases.eval();

// //! ============= Turn to void pointer. =============
// // 修正缓冲区转换方式
// auto activations_buf = inputs[0].data<float16_t>();
// auto qweight_buf = inputs[1].data<uint8_t>();
// auto scales_buf = inputs[2].data<float16_t>();
// auto qlut_buf = QLUT.data<uint8_t>();
// auto lut_scales_buf = LUT_Scales.data<float16_t>();
// auto lut_biases_buf = LUT_Biases.data<float16_t>();
// auto output_buf = output.data<float16_t>();

// // 修正函数调用参数
// int err_no = preprocessor_int8(
//     this->M_ * this->nbits_,
//     this->K_,
//     this->N_,
//     this->nbits_,
//     (void*)activations_buf,
//     (void*)lut_scales_buf,
//     (void*)lut_biases_buf,
//     (void*)qlut_buf
// );
// if (err_no != 0) {
//     std::cout << "preprocessor_int8 failed with Parameters : " <<
//         "m = " << this->bm_ <<
//         ", k = " << this->K_ <<
//         ", n = " << this->N_ <<
//         ", b = " << this->nbits_ << std::endl;
//     return;   
// }

// std::cout << "preprocessor_int8 done!" << std::endl;
// std::cout << "QLUT: " << QLUT << "shape : " << QLUT.shape() << std::endl;
// std::cout << "LUT_Scales: " << LUT_Scales << "shape : " << LUT_Scales.shape() << std::endl;
// std::cout << "LUT_Biases: " << LUT_Biases << "shape : " << LUT_Biases.shape() << std::endl;
// std::cout << "qgemm_output: " << qgemm_output << "shape : " << qgemm_output.shape() << std::endl;
// std::cout << "Scales :" << inputs[2] << "shape : " << inputs[2].shape() << std::endl;

// std::vector<std::future<int>> bm_tiles;
// int ngroups_per_elem = 8 / this->g_;
// for(int m_tile_idx = 0; m_tile_idx < this->M_ / (this->bm_ / ngroups_per_elem); m_tile_idx++) {
//     bm_tiles.emplace_back(this->pool_.enqueue(std::bind(
//                 &qgemm_lut_int8,
//                 this->bm_,
//                 this->K_,
//                 this->N_,
//                 this->nbits_,
//                 (void *)(qweight_buf + (this->K_ / this->g_) * m_tile_idx * this->bm_ / ngroups_per_elem), 
//                 (void *)qlut_buf,
//                 (void *)scales_buf,
//                 (void *)lut_scales_buf,
//                 (void *)lut_biases_buf, 
//                 (void *)(output_buf + m_tile_idx * this->bm_ / ngroups_per_elem)
//             )
//         )
//     );
// }
// for (auto& tile : bm_tiles) {
//     tile.wait();
// }




