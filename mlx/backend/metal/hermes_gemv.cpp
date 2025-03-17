// Copyright © 2023-2024 Apple Inc.

#include "mlx/backend/common/utils.h"
#include "mlx/backend/metal/copy.h"
#include "mlx/backend/metal/device.h"
#include "mlx/backend/metal/kernels.h"
#include "mlx/backend/metal/kernels/defines.h"
#include "mlx/backend/metal/kernels/steel/gemm/params.h"
#include "mlx/backend/metal/matmul.h"
#include "mlx/backend/metal/utils.h"
#include "mlx/primitives.h"
#include "mlx/utils.h"

namespace mlx::core {

namespace {

inline auto collapse_batches(const array& a, const array& b) {
  // Get and check the shape for the batched dims
  Shape A_bshape{a.shape().begin(), a.shape().end() - 2};
  Shape B_bshape{b.shape().begin(), b.shape().end() - 2};
  if (A_bshape != B_bshape) {
    std::ostringstream msg;
    msg << "[matmul] Got matrices with incorrectly broadcasted shapes: " << "A "
        << a.shape() << ", B " << b.shape() << ".";
    throw std::runtime_error(msg.str());
  }

  Strides A_bstride{a.strides().begin(), a.strides().end() - 2};
  Strides B_bstride{b.strides().begin(), b.strides().end() - 2};

  auto [batch_shape, batch_strides] =
      collapse_contiguous_dims(A_bshape, std::vector{A_bstride, B_bstride});

  auto A_batch_stride = batch_strides[0];
  auto B_batch_stride = batch_strides[1];

  if (batch_shape.empty()) {
    batch_shape.push_back(1);
    A_batch_stride.push_back(0);
    B_batch_stride.push_back(0);
  }

  return std::make_tuple(batch_shape, A_batch_stride, B_batch_stride);
}

inline auto collapse_batches(const array& a, const array& b, const array& c) {
  // Get and check the shape for the batched dims
  Shape A_bshape{a.shape().begin(), a.shape().end() - 2};
  Shape B_bshape{b.shape().begin(), b.shape().end() - 2};
  Shape C_bshape{c.shape().begin(), c.shape().end() - 2};
  if (A_bshape != B_bshape || A_bshape != C_bshape) {
    std::ostringstream msg;
    msg << "[addmm] Got matrices with incorrectly broadcasted shapes: " << "A "
        << a.shape() << ", B " << b.shape() << ", B " << c.shape() << ".";
    throw std::runtime_error(msg.str());
  }

  Strides A_bstride{a.strides().begin(), a.strides().end() - 2};
  Strides B_bstride{b.strides().begin(), b.strides().end() - 2};
  Strides C_bstride{c.strides().begin(), c.strides().end() - 2};

  auto [batch_shape, batch_strides] = collapse_contiguous_dims(
      A_bshape, std::vector{A_bstride, B_bstride, C_bstride});

  auto A_batch_stride = batch_strides[0];
  auto B_batch_stride = batch_strides[1];
  auto C_batch_stride = batch_strides[2];

  if (batch_shape.empty()) {
    batch_shape.push_back(1);
    A_batch_stride.push_back(0);
    B_batch_stride.push_back(0);
    C_batch_stride.push_back(0);
  }

  return std::make_tuple(
      batch_shape, A_batch_stride, B_batch_stride, C_batch_stride);
}

std::tuple<bool, int64_t, array> check_transpose(
    std::vector<array>& copies,
    const Stream& s,
    const array& arr,
    bool is_vector) {
  auto stx = arr.strides()[arr.ndim() - 2];
  auto sty = arr.strides()[arr.ndim() - 1];
  if (sty == 1 && (!is_vector || stx == arr.shape(-1))) {
    return std::make_tuple(false, stx, arr);
  } else if (stx == 1 && (!is_vector || sty == arr.shape(-2))) {
    return std::make_tuple(true, sty, arr);
  } else {
    array arr_copy(arr.shape(), arr.dtype(), nullptr, {});
    copy_gpu(arr, arr_copy, CopyType::General, s);
    copies.push_back(arr_copy);
    return std::make_tuple(false, arr.shape(-1), arr_copy);
  }
};

} // namespace

void HermesMatmul::eval_gpu(const std::vector<array>& inputs, array& out) {
  assert(inputs.size() == 2);
  if (!issubdtype(out.dtype(), floating)) {
    throw std::runtime_error(
        "[matmul] Does not yet support non-floating point types.");
  }
  auto& s = stream();
  auto& d = metal::device(s.device);

  auto& a_pre = inputs[0];
  auto& b_pre = inputs[1];
  // Return 0s if either input is empty
  if (a_pre.size() == 0 || b_pre.size() == 0) {
    array zero = array(0, a_pre.dtype());
    fill_gpu(zero, out, s);
    d.add_temporary(std::move(zero), s.index);
    return;
  }

  out.set_data(allocator::malloc_or_wait(out.nbytes()));

  /////////////////////////////////////////////////////////////////////////////
  // Init checks and prep

  int M = a_pre.shape(-2);
  int N = b_pre.shape(-1);
  int K = a_pre.shape(-1);

  // Keep a vector with copies to be cleared in the completed buffer to release
  // the arrays
  std::vector<array> copies;
  auto [a_transposed, a_cols, a] = check_transpose(copies, s, a_pre, M == 1);
  auto [b_transposed, b_cols, b] = check_transpose(copies, s, b_pre, N == 1);

  /////////////////////////////////////////////////////////////////////////////
  // Check and collapse batch dimensions

  auto [batch_shape, A_batch_stride, B_batch_stride] = collapse_batches(a, b);

  auto batch_size_out = out.size() / (size_t(M) * size_t(N));

  // Collapse batches into M if needed
  if (batch_size_out > 1 && !a_transposed && batch_shape.size() == 1 &&
      a.strides()[a.ndim() - 2] == K && A_batch_stride.back() == M * K &&
      B_batch_stride.back() == 0) {
    M *= batch_shape.back();
    batch_size_out = 1;

    A_batch_stride = {0};
    B_batch_stride = {0};
    batch_shape = {1};
  }

  /////////////////////////////////////////////////////////////////////////////
  // Gemv specialization

  // Route to gemv if needed
  if (std::min(M, N) == 1) {
    // Collect problem info
    bool is_b_matrix = N != 1;

    auto& mat = is_b_matrix ? b : a;
    auto& vec = is_b_matrix ? a : b;
    bool transpose_mat = is_b_matrix ? !b_transposed : a_transposed;
    int in_vector_len = K;
    int out_vector_len = is_b_matrix ? N : M;

    int mat_cols = transpose_mat ? out_vector_len : in_vector_len;
    int mat_rows = transpose_mat ? in_vector_len : out_vector_len;
    int mat_ld = is_b_matrix ? b_cols : a_cols;

    auto batch_strides_mat = is_b_matrix ? B_batch_stride : A_batch_stride;
    auto batch_strides_vec = is_b_matrix ? A_batch_stride : B_batch_stride;

    int stride_mat = batch_strides_mat.back();
    int stride_vec = batch_strides_vec.back();

    // Determine if inputs have simple batching / broadcasting
    bool contiguous_kernel = (batch_shape.size() == 1);

    int batch_ndim = batch_shape.size();

    // Determine dispatch kernel
    int tm = 4, tn = 4;
    int sm = 1, sn = 32;
    int bm = 1, bn = 1;
    int n_out_per_tgp;
    std::ostringstream kname;

    if (transpose_mat) {
      if (in_vector_len >= 8192 && out_vector_len >= 2048) {
        sm = 4;
        sn = 8;
      } else {
        sm = 8;
        sn = 4;
      }

      if (out_vector_len >= 2048) {
        bn = 16;
      } else if (out_vector_len >= 512) {
        bn = 4;
      } else {
        bn = 2;
      }

      // Specialized kernel for very small outputs
      tn = out_vector_len < tn ? 1 : tn;

      n_out_per_tgp = bn * sn * tn;
      kname << "gemv_t_" << type_to_name(out);

    } else {
      bm = out_vector_len >= 4096 ? 8 : 4;
      sn = 32;

      // Specialized kernel for very small outputs
      tm = out_vector_len < tm ? 1 : tm;

      n_out_per_tgp = bm * sm * tm;
      kname << "gemv_" << type_to_name(out);
    }

    kname << "_bm" << bm << "_bn" << bn << "_sm" << sm << "_sn" << sn << "_tm"
          << tm << "_tn" << tn;
    kname << "_nc" << !contiguous_kernel << "_axpby0";

    // Encode and dispatch kernel
    auto& compute_encoder = d.get_command_encoder(s.index);
    auto kernel = d.get_kernel(kname.str());
    compute_encoder.set_compute_pipeline_state(kernel);

    int n_tgp = (out_vector_len + n_out_per_tgp - 1) / n_out_per_tgp;
    MTL::Size group_dims = MTL::Size(32, bn, bm);
    MTL::Size grid_dims = MTL::Size(n_tgp, 1, batch_size_out);

    compute_encoder.set_input_array(mat, 0);
    compute_encoder.set_input_array(vec, 1);
    compute_encoder.set_output_array(out, 3);

    compute_encoder.set_bytes(in_vector_len, 4);
    compute_encoder.set_bytes(out_vector_len, 5);
    compute_encoder.set_bytes(mat_ld, 6);

    compute_encoder.set_bytes(batch_ndim, 9);
    compute_encoder.set_vector_bytes(batch_shape, 10);
    compute_encoder.set_vector_bytes(batch_strides_vec, 11);
    compute_encoder.set_vector_bytes(batch_strides_mat, 12);

    compute_encoder.dispatch_threadgroups(grid_dims, group_dims);

    d.add_temporaries(std::move(copies), s.index);
    return;
  }
  /////////////////////////////////////////////////////////////////////////////
  // Gemm specialization

  return steel_matmul(
      /* const Stream& s = */ s,
      /* metal::Device& d = */ d,
      /* const array& a = */ a,
      /* const array& b = */ b,
      /* array& out = */ out,
      /* int M = */ M,
      /* int N = */ N,
      /* int K = */ K,
      /* int batch_size_out = */ batch_size_out,
      /* int lda = */ a_cols,
      /* int ldb = */ b_cols,
      /* bool transpose_a = */ a_transposed,
      /* bool transpose_b = */ b_transposed,
      /* std::vector<array>& = */ copies,
      /* Shape batch_shape = */ batch_shape,
      /* Strides A_batch_stride = */ A_batch_stride,
      /* Strides B_batch_stride = */ B_batch_stride);
}

} // end namespace mlx::core
