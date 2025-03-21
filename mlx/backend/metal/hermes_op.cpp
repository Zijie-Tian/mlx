// Copyright © 2023-2024 Apple Inc.

#include <tvm/runtime/module.h>
#include <tvm/runtime/packed_func.h>
#include <tvm/runtime/registry.h>
#include <dlpack/dlpack.h>

#include "mlx/backend/common/slicing.h"
#include "mlx/backend/common/compiled.h"
#include "mlx/backend/metal/copy.h"
#include "mlx/backend/metal/device.h"
#include "mlx/backend/metal/kernels.h"
#include "mlx/backend/metal/reduce.h"
#include "mlx/backend/metal/utils.h"
#include "mlx/fast_primitives.h"
#include "mlx/utils.h"
#include "mlx/primitives.h"
#include "mlx/utils.h"
#include "mlx/ops.h"

#include <mlx/backend/cpu/tmac/kernels.h>
#include <mlx/threadpool.h>
#include <mlx/backend/metal/hermes_op.h>
// #include <mlx/backend/cpu/tmac_gemv.h>

#define milliseconds(x) \
  (std::chrono::duration_cast<std::chrono::nanoseconds>(x).count() / 1e6)
#define time_now() std::chrono::high_resolution_clock::now()

namespace mlx::core::fast {

#if defined(USE_TVM_THREADPOOL) || defined(USE_TVM_LIB)
struct TVMRuntime {
    tvm::runtime::Module _mod_lib;
    std::map<_fkey, tvm::runtime::PackedFunc> _fcache;
    const tvm::runtime::PackedFunc* _config_threadpool;
    tvm::runtime::PackedFunc pf;
    tvm::runtime::PackedFunc qf;
};
#endif

// Initialize the static member variable
#if defined(USE_TVM_THREADPOOL) || defined(USE_TVM_LIB)
TVMRuntime* Hermes::_tvm_internals = nullptr;
#endif
INIReader* Hermes::_reader = nullptr;
ThreadPool Hermes::_thread_pool{12};

struct HermesConfig {
  int bm;
  int simd_n_in;
  int simd_n_out;
  int kfactor;
  int group_size;
  int lut_scales_size;
  int scales_size;
  int n_tile_num;

  // Overload the << operator to allow printing the struct
  friend std::ostream& operator<<(std::ostream& os, const HermesConfig& config) {
    os << "HermesConfig {"
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
tvm::runtime::PackedFunc get_function(TVMRuntime* _tvm_internals, std::mutex& _m, const std::string& func_name, _fkey key) {
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



//! ============================== GPU high percision ==============================

void launch_qmm_high(
    std::string name,
    const std::vector<array>& inputs,
    array& out,
    int group_size,
    int bits,
    int D,
    int O,
    int B,
    int N,
    MTL::Size& group_dims,
    MTL::Size& grid_dims,
    bool batched,
    bool matrix,
    bool gather,
    bool aligned,
    bool quad,
    const Stream& s) {
  auto& x_pre = inputs[0];
  auto& w_pre = inputs[1];
  auto& scales_pre = inputs[2];
  auto& biases_pre = inputs[3];

  // Ensure that the last two dims are row contiguous.
  // TODO: Check if we really need this for x as well...
  std::vector<array> copies;
  auto ensure_row_contiguous_last_dims = [&copies, &s](const array& arr) {
    auto stride_0 = arr.strides()[arr.ndim() - 2];
    auto stride_1 = arr.strides()[arr.ndim() - 1];
    if (stride_0 == arr.shape(-1) && stride_1 == 1) {
      return arr;
    } else {
      array arr_copy(arr.shape(), arr.dtype(), nullptr, {});
      copy_gpu(arr, arr_copy, CopyType::General, s);
      copies.push_back(arr_copy);
      return arr_copy;
    }
  };
  auto x = ensure_row_contiguous_last_dims(x_pre);
  auto w = ensure_row_contiguous_last_dims(w_pre);
  auto scales = ensure_row_contiguous_last_dims(scales_pre);
  auto biases = ensure_row_contiguous_last_dims(biases_pre);

  int x_batch_ndims = x.ndim() - 2;
  auto& x_shape = x.shape();
  auto& x_strides = x.strides();
  int w_batch_ndims = w.ndim() - 2;
  auto& w_shape = w.shape();
  auto& w_strides = w.strides();
  auto& s_strides = scales.strides();
  auto& b_strides = biases.strides();

  std::string aligned_n = (O % 32) == 0 ? "true" : "false";

  std::ostringstream kname;
  auto type_string = get_type_string(x.dtype());
  kname << name << "_" << type_string << "_gs_" << group_size << "_b_" << bits;
  if (quad) {
    kname << "_d_" << D;
  }
  if (aligned) {
    kname << "_alN_" << aligned_n;
  }
  if (!gather) {
    kname << "_batch_" << batched;
  }

  // Encode and dispatch kernel
  std::string template_def;
  if (quad) {
    template_def = get_template_definition(
        kname.str(), name, type_string, group_size, bits, D, batched);
  } else if (aligned && !gather) {
    template_def = get_template_definition(
        kname.str(), name, type_string, group_size, bits, aligned_n, batched);
  } else if (!gather && !aligned) {
    template_def = get_template_definition(
        kname.str(), name, type_string, group_size, bits, batched);
  } else if (aligned && gather) {
    template_def = get_template_definition(
        kname.str(), name, type_string, group_size, bits, aligned_n);
  } else {
    template_def = get_template_definition(
        kname.str(), name, type_string, group_size, bits);
  }
  auto& d = metal::device(s.device);
  auto kernel = get_quantized_kernel(d, kname.str(), template_def);
  auto& compute_encoder = d.get_command_encoder(s.index);
  compute_encoder.set_compute_pipeline_state(kernel);

  compute_encoder.set_input_array(w, 0);
  compute_encoder.set_input_array(scales, 1);
  compute_encoder.set_input_array(biases, 2);
  compute_encoder.set_input_array(x, 3);
  compute_encoder.set_output_array(out, 4);
  compute_encoder.set_bytes(D, 5);
  compute_encoder.set_bytes(O, 6);

  int offset = 7;
  if (matrix) {
    compute_encoder.set_bytes(B, 7);
    offset += 1;
  }

  if (batched || gather) {
    compute_encoder.set_bytes(x_batch_ndims, offset);
    compute_encoder.set_vector_bytes(x_shape, offset + 1);
    compute_encoder.set_vector_bytes(x_strides, offset + 2);
    compute_encoder.set_bytes(w_batch_ndims, offset + 3);
    compute_encoder.set_vector_bytes(w_shape, offset + 4);
    compute_encoder.set_vector_bytes(w_strides, offset + 5);
    compute_encoder.set_vector_bytes(s_strides, offset + 6);
    compute_encoder.set_vector_bytes(b_strides, offset + 7);
  }
  if (gather) {
    auto& lhs_indices = inputs[4];
    auto& rhs_indices = inputs[5];

    // TODO: collapse batch dims
    auto& batch_shape = lhs_indices.shape();
    int batch_ndims = batch_shape.size();
    auto& lhs_strides = lhs_indices.strides();
    auto& rhs_strides = rhs_indices.strides();

    compute_encoder.set_bytes(batch_ndims, offset + 8);
    compute_encoder.set_vector_bytes(batch_shape, offset + 9);
    compute_encoder.set_input_array(lhs_indices, offset + 10);
    compute_encoder.set_input_array(rhs_indices, offset + 11);
    compute_encoder.set_vector_bytes(lhs_strides, offset + 12);
    compute_encoder.set_vector_bytes(rhs_strides, offset + 13);
  }

  compute_encoder.dispatch_threadgroups(grid_dims, group_dims);
  d.add_temporaries(std::move(copies), s.index);
}

void qvm_high_split_k(
    const std::vector<array>& inputs,
    array& out,
    int group_size,
    int bits,
    int D,
    int O,
    int B,
    int N,
    const Stream& s) {
  int split_k = D > 8192 ? 32 : 8;
  int split_D = (D + split_k - 1) / split_k;
  N *= split_k;

  int bo = 64;
  int bd = 32;
  MTL::Size group_dims = MTL::Size(bd, 2, 1);
  MTL::Size grid_dims = MTL::Size(B, O / bo, N);

  auto& x_pre = inputs[0];
  auto& w_pre = inputs[1];
  auto& scales_pre = inputs[2];
  auto& biases_pre = inputs[3];

  // Ensure that the last two dims are row contiguous.
  // TODO: Check if we really need this for x as well...
  std::vector<array> copies;
  auto ensure_row_contiguous_last_dims = [&copies, &s](const array& arr) {
    auto stride_0 = arr.strides()[arr.ndim() - 2];
    auto stride_1 = arr.strides()[arr.ndim() - 1];
    if (stride_0 == arr.shape(-1) && stride_1 == 1) {
      return arr;
    } else {
      array arr_copy(arr.shape(), arr.dtype(), nullptr, {});
      copy_gpu(arr, arr_copy, CopyType::General, s);
      copies.push_back(arr_copy);
      return arr_copy;
    }
  };
  auto x = ensure_row_contiguous_last_dims(x_pre);
  auto w = ensure_row_contiguous_last_dims(w_pre);
  auto scales = ensure_row_contiguous_last_dims(scales_pre);
  auto biases = ensure_row_contiguous_last_dims(biases_pre);

  int x_batch_ndims = x.ndim() - 2;
  auto x_shape = x.shape();
  auto x_strides = x.strides();
  int w_batch_ndims = w.ndim() - 2;
  auto w_shape = w.shape();
  auto w_strides = w.strides();
  auto s_strides = scales.strides();
  auto b_strides = biases.strides();

  // Add split_k dim with reshapes
  x_shape.insert(x_shape.end() - 2, split_k);
  x_shape.back() /= split_k;
  x_strides.insert(x_strides.end() - 2, split_D);
  x_strides[x.ndim() - 1] = split_D;
  x_batch_ndims += 1;

  w_shape.insert(w_shape.end() - 2, split_k);
  w_shape[w.ndim() - 1] /= split_k;
  w_strides.insert(w_strides.end() - 2, split_D * w.shape(-1));
  w_batch_ndims += 1;
  s_strides.insert(s_strides.end() - 2, split_D * scales.shape(-1));
  b_strides.insert(b_strides.end() - 2, split_D * biases.shape(-1));

  int final_block_size = D - (split_k - 1) * split_D;

  auto& d = metal::device(s.device);

  auto temp_shape = out.shape();
  temp_shape.insert(temp_shape.end() - 2, split_k);
  array intermediate(temp_shape, x.dtype(), nullptr, {});
  intermediate.set_data(allocator::malloc_or_wait(intermediate.nbytes()));
  d.add_temporary(intermediate, s.index);

  std::ostringstream kname;
  auto type_string = get_type_string(x.dtype());
  kname << "qvm_split_k" << "_" << type_string << "_gs_" << group_size << "_b_"
        << bits << "_spk_" << split_k;
  auto template_def = get_template_definition(
      kname.str(), "qvm_split_k", type_string, group_size, bits, split_k);

  // Encode and dispatch kernel
  auto kernel = get_quantized_kernel(d, kname.str(), template_def);
  auto& compute_encoder = d.get_command_encoder(s.index);
  compute_encoder.set_compute_pipeline_state(kernel);

  compute_encoder.set_input_array(w, 0);
  compute_encoder.set_input_array(scales, 1);
  compute_encoder.set_input_array(biases, 2);
  compute_encoder.set_input_array(x, 3);
  compute_encoder.set_output_array(intermediate, 4);
  compute_encoder.set_bytes(split_D, 5);
  compute_encoder.set_bytes(O, 6);

  compute_encoder.set_bytes(x_batch_ndims, 7);
  compute_encoder.set_vector_bytes(x_shape, 8);
  compute_encoder.set_vector_bytes(x_strides, 9);
  compute_encoder.set_bytes(w_batch_ndims, 10);
  compute_encoder.set_vector_bytes(w_shape, 11);
  compute_encoder.set_vector_bytes(w_strides, 12);
  compute_encoder.set_vector_bytes(s_strides, 13);
  compute_encoder.set_vector_bytes(b_strides, 14);
  compute_encoder.set_bytes(final_block_size, 15);

  compute_encoder.dispatch_threadgroups(grid_dims, group_dims);
  d.add_temporaries(std::move(copies), s.index);

  int axis = intermediate.ndim() - 3;
  ReductionPlan plan(
      ReductionOpType::ContiguousStridedReduce,
      {intermediate.shape(axis)},
      {intermediate.strides(axis)});
  strided_reduce_general_dispatch(
      intermediate, out, "sum", plan, {axis}, compute_encoder, d, s);
}

void qmm_op_high(
    const std::vector<array>& inputs,
    array& out,
    bool transpose,
    int group_size,
    int bits,
    bool gather,
    const Stream& s) {
  // out.set_data(allocator::malloc_or_wait(out.nbytes()));

  MTL::Size group_dims;
  MTL::Size grid_dims;

  auto& x = inputs[0];
  auto& w = inputs[1];
  bool batched = !gather && (w.ndim() > 2 || !x.flags().row_contiguous);

  int D = x.shape(-1);
  int O = out.shape(-1);
  // For the unbatched W case, avoid `adjust_matrix_offsets`
  // for a small performance gain.
  int B = (batched || gather) ? x.shape(-2) : x.size() / D;
  int N = (batched || gather) ? out.size() / B / O : 1;

  std::string name = gather ? "bs_" : "";
  bool matrix = false;
  bool aligned = false;
  bool quad = false;

  if (transpose) {
    if (B < 6 && (D == 128 || D == 64) && is_power_of_2(bits)) {
      name += "qmv_quad";
      constexpr int quads_per_simd = 8;
      constexpr int results_per_quadgroup = 8;
      int bo = quads_per_simd * results_per_quadgroup;
      int simdgroup_size = 32;
      group_dims = MTL::Size(simdgroup_size, 1, 1);
      grid_dims = MTL::Size((O + bo - 1) / bo, B, N);
      quad = true;
    } else if (B < 6 && O % 8 == 0 && D % 512 == 0 && D >= 512) {
      name += "qmv_fast";
      int bo = 8;
      int bd = 32;
      group_dims = MTL::Size(bd, 2, 1);
      grid_dims = MTL::Size(B, O / bo, N);
    } else if (B < 6) {
      name += "qmv";
      int bo = 8;
      int bd = 32;
      group_dims = MTL::Size(bd, 2, 1);
      grid_dims = MTL::Size(B, (O + bo - 1) / bo, N);
    } else {
      int wn = 2;
      int wm = 2;
      int bm = 32;
      int bn = 32;
      group_dims = MTL::Size(32, wn, wm);
      grid_dims = MTL::Size((O + bn - 1) / bn, (B + bm - 1) / bm, N);
      name += "qmm_t";
      matrix = true;
      aligned = true;
    }
  } else {
    if (B < 4 && D >= 1024 && !gather) {
      return qvm_high_split_k(inputs, out, group_size, bits, D, O, B, N, s);
    } else if (B < 4) {
      name += "qvm";
      int bo = 64;
      int bd = 32;
      group_dims = MTL::Size(bd, 2, 1);
      grid_dims = MTL::Size(B, O / bo, N);
    } else {
      name += "qmm_n";
      int wn = 2;
      int wm = 2;
      int bm = 32;
      int bn = 32;
      group_dims = MTL::Size(32, wn, wm);
      grid_dims = MTL::Size(O / bn, (B + bm - 1) / bm, N);
      matrix = true;
      if ((O % bn) != 0) {
        std::ostringstream msg;
        msg << "[quantized_matmul] The output size should be divisible by "
            << bn << " but received " << O << ".";
        throw std::runtime_error(msg.str());
      }
    }
  }
  launch_qmm_high(
      name,
      inputs,
      out,
      group_size,
      bits,
      D,
      O,
      B,
      N,
      group_dims,
      grid_dims,
      batched,
      matrix,
      gather,
      aligned,
      quad,
      s);
}

//! ============================== Hermes declearation ==============================

std::string Hermes::get_template_name(_fkey key)
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

HermesConfig Hermes::get_kcfg(int M, int K, int N, int bits)
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

Hermes::Hermes(
    Stream stream,
    const std::string& kcfg_file,
    const std::string& library_file,
    int M_high, int M_low, int K, int N,
    bool transpose_high,
    int group_size_high,
    int nbits_high,
    int nbits_low) : UnaryPrimitive(stream), 
    M_high(M_high), M_low(M_low), K_(K), N_(N), nbits_low(nbits_low),
    transpose_high(transpose_high), group_size_high(group_size_high), nbits_high(nbits_high),
    _n_threads(12) {
    
    if (Hermes::_reader == nullptr) {
        Hermes::_reader = new INIReader(get_kcfg_file(kcfg_file));
    }

    if (this->N_ >= 512) {
        this->N_low_kernel = 512;
    } else if (this->N_ >= 256) {
        this->N_low_kernel = 256;
    } else {
        this->N_low_kernel = 1;
    }

    // TODO : Here we set `N` to 1.
    HermesConfig config = get_kcfg(M_low, K_, this -> N_low_kernel, nbits_low);
    if (config.bm == -1) {
        LOG(FATAL)  << "Cannot find the configuration for the given TMAC parameters"
                    << " (M, K, N, nbits) = (" << M_low << ", " << K_ << ", " << this -> N_low_kernel << ", " << nbits_low << ")";
    }
    // std::cout << "TMAC Configuration: " << config << std::endl;
    this -> bm_ = config.bm;
    this -> g_ = 4;
    this -> group_size_ = config.group_size;
    this -> act_group_size_ = 64;
    this -> kfactor_ = config.kfactor;

#ifdef USE_TVM_LIB
    if (Hermes::_tvm_internals == nullptr) {
        Hermes::_tvm_internals = new TVMRuntime();
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
                Hermes::_tvm_internals,
                this -> _m, 
                this -> get_template_name({M_low, K_, this -> N_low_kernel, nbits_low, 0}),
                {M_low, K_, this -> N_low_kernel, nbits_low, 0}
            );
            _tvm_internals -> qf = get_function(
                Hermes::_tvm_internals, 
                this -> _m, 
#ifdef USE_TVM_THREADPOOL
                //! This `bm_ /  nbits_low` is for name valid.
                this -> get_template_name({M_low, K_, this -> N_low_kernel, nbits_low, 1}),
#else
                this -> get_template_name({bm_, K_, this -> N_low_kernel, nbits_low, 1}),
#endif
                {M_low, K_, this -> N_low_kernel, nbits_low, 1}
            );
    }
#endif

    this -> set_workspace(M_low, K_, N_);
}


// Should only be called in main thread
void Hermes::set_workspace(int maxM, int maxK, int maxN) {
    int ngroups_per_elem = 8 / g_;
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

void Hermes::set_num_threads(int n_threads) {
#ifdef USE_TVM_THREADPOOL
    if (n_threads != _n_threads) {
        _n_threads = n_threads;
        (*(_tvm_internals -> _config_threadpool))(1, _n_threads);
        int num_threads = (*tvm::runtime::Registry::Get("runtime.NumThreads"))();
        LOG(INFO) << "NUM_THREADS: " << num_threads;
    }
#endif
}

Hermes::~Hermes() {
  // Destructor logic if needed
}

void Hermes::eval_gpu(const std::vector<array>& inputs, array& out) {
  // Pre-Allocate output buffer.
  out.set_data(allocator::malloc_or_wait(out.nbytes()));
  
  // Split the output buffer into high and low parts
  array out_high(out.buffer(), {N_, M_high}, out.dtype());
  array out_low(out.buffer(), {N_, M_low}, out.dtype());
  out_low.copy_shared_buffer(out, {0}, out.flags(), out_low.nbytes(), N_ * M_high);

  // ===== Inputs =====
  // [0] : activations  : [N, K]
  // [1] : qweight_high : [M_high, K]
  // [2] : scales_high  : [M_high, K]
  // [3] : biases_high  : [M_high, K]
  // [4] : qweight_low  : []
  // [5] : scales_low   : []
  // [6] : biases_low   : [] (LUT side currently cannot use.)

  //! NEVER put large output buffers in the var.
  // auto future = Hermes::_thread_pool.enqueue([=]() mutable {
  //     qmm_op_high(inputs, out_high, transpose_high, group_size_high, nbits_high, false, stream());
  // });

  // ===== Low precision =====
  int ngroups_per_elem = 8 / this->g_;
#ifdef USE_TVM_THREADPOOL

  // 修正缓冲区转换方式
  auto activations_buf = inputs[0].data<float16_t>();
  auto qweight_buf = inputs[4].data<uint8_t>();
  auto scales_buf = inputs[5].data<float16_t>();
  auto output_buf = out_low.data<float16_t>();

  int64_t A_shape[3] = {M_low / bm_, K_, bm_ / ngroups_per_elem};
  int64_t Scales_shape[3] = {M_low / bm_, K_ / group_size_, bm_ / nbits_low};
  int64_t activations_shape[2] = {N_, K_};
  int64_t output_shape[2] = {N_, M_low};
  int64_t C_tile_shape[2] = {N_low_kernel, M_low};
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
  int N_tiles = (N_ + N_low_kernel - 1) / N_low_kernel;
  for (int n_idx = 0; n_idx < N_tiles; n_idx++) {
      DLTensor C_tile = {
          /* .data   = */ (void *)(output_buf + n_idx * N_low_kernel * K_),
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
    auto activations_buf = inputs[0].data<float16_t>();
    auto qweight_buf = inputs[4].data<uint8_t>();
    auto scales_buf = inputs[5].data<float16_t>();
    auto output_buf = out_low.data<float16_t>();

#ifdef USE_TVM_LIB
    int64_t A_shape[3] = {M_low / bm_, K_, bm_ / ngroups_per_elem};
    int64_t Scales_shape[3] = {M_low / bm_, K_ / group_size_, bm_ / nbits_low};
    int64_t activations_shape[2] = {N_, K_};
    int64_t activation_bn_shape[2] = {1, K_};  // TODO : Now we only support batch size = 1.
    int64_t output_shape[2] = {N_, M_low};
    int64_t qlut_shape[3] = {N_, K_ / g_, (1 << g_)};
    int64_t luts_shape[3] = {N_, K_ / act_group_size_};

    int64_t A_tile_shape[3] = {nbits_low, K_ / g_, bm_ / ngroups_per_elem};
    int64_t C_tile_shape[2] = {1, bm_};       // TODO : Change this `1` to batch processing.

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
for (int m_tile_idx = 0; m_tile_idx < this->M_low / (this->bm_ / ngroups_per_elem); m_tile_idx++) {
    DLTensor A_tile = {
        /* .data   = */ (void *)(qweight_buf + nbits_low * (K_ / g_) * m_tile_idx * bm_ / ngroups_per_elem),
        /* .device = */ cpu_dev,
        /* .ndim   = */ 3,
        /* .dtype  = */ int_dtype,
        /* .shape  = */ A_tile_shape
    };
    A_tiles.push_back(A_tile);
}

std::vector<DLTensor> C_tiles;
for(int n_idx = 0; n_idx < N_; n_idx++) {
    for (int m_tile_idx = 0; m_tile_idx < this->M_low / (this->bm_ / ngroups_per_elem); m_tile_idx++) {
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
        this->M_low * this->nbits_low,
        this->K_,
        this->N_,
        this->nbits_low,
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
        ", b = " << this->nbits_low << std::endl;
        return;   
    }
#endif

#ifdef USE_TVM_LIB
        for(int m_tile_idx = 0; m_tile_idx < this->M_low / (this->bm_); m_tile_idx++) {
        // for(int m_tile_idx = 0; m_tile_idx < 1; m_tile_idx++) {
            // (_tvm_internals -> qf)(&A, &QLUTt, &Scales, &LUTSt, &LUTBt, &C);
            tiles.emplace_back(Hermes::_thread_pool.enqueue(
                [this, &A_tiles, &QLUTt, &Scales, &LUTSt, &LUTBt, &C_tiles, m_tile_idx, n_idx, ngroups_per_elem]() -> int {
                    (_tvm_internals -> qf)(&A_tiles[m_tile_idx], &QLUTt, &Scales, &LUTSt, &LUTBt, &C_tiles[m_tile_idx + n_idx * this->M_low / (this->bm_ / ngroups_per_elem)]);
                    return 0;
                }
            ));
        }
#else
        for(int m_tile_idx = 0; m_tile_idx < this->M_low / (this->bm_ / ngroups_per_elem); m_tile_idx++) {
            tiles.emplace_back(Hermes::_thread_pool.enqueue(
                std::bind(
                    &qgemm_lut_int8,
                    this->bm_,
                    this->K_,
                    this->N_,
                    this->nbits_low,
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

    // future.wait();
}

} // end namespace mlx::core
