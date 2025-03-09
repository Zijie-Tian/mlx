import mlx.core as mx

import numpy as np
from typing import Tuple, Optional

def preprocess_weights(
    w: np.ndarray,
    scales: np.ndarray,
    zeros: Optional[np.ndarray] = None,
    bits: int = 4,
    g: int = 4,
    bm: int = 512,
    kfactor: int = 16,
    simd_n_in: int = 16,
    simd_n_out: int = 8,
) -> Tuple[np.ndarray, np.ndarray]:
    """Offline preprocess the weights before inference.

    Parameters
    ----------
    w : np.ndarray
        Quantized weights of shape (M, K) and type "uint8".
        Add a bias of 2^(bits-1) to the original int1/2/3/4 values to convert it to uint values.
        E.g., add a bias of 2 to int2: -2, -1, 0, 1 -> 0, 1, 2, 3
    scales: np.ndarray
        Quantization scales of shape (M, K // group_size) or (m_groups,) and type float32/16.
    zeros: np.ndarray
        Same shape and type with scales.
        If None, the actual zero points will be 2^(bits-1) * scales;
        if not None, the actual zero points will be zeros + 2^(bits-1) * scales.
        E.g., before passing the zeros from BitDistiller/GPTQ, you need to modify it as following:
        `zeros = (zeros - (2 ** (bits - 1))) * scales`
    bits: int
        Number of bits for each quantized element
    g: int
        Group size of LUT
    bm: int
        Tuned tiling size of M
    kfactor: int
        Tuned tiling size of K
    simd_width: int
        128 for ARM NEON

    Returns
    -------
    w: np.ndarray
        Permuted weights
    scales: np.ndarray
        Permuted scales
    """
    assert(w.dtype == "uint8")

    M, K = w.shape
    M = M * bits
    ngroups_per_elem = 8 // g

    #! (M // bits, K, bits)
    w = np.stack([(w >> ib) & 1 for ib in range(bits)], axis=-1)
    # (M // bits, K, bits) -> (M // bits, bits, K) -> (M // bits, bits, K // g, g)
    w = w.transpose(0, 2, 1).reshape(M // bits, bits, K // g, g)
    w = sum([(w[:, :, :, ig] << ig) for ig in range(g)])    #! After this, each element will containes one group. 

    # #> Test code
    # num_elem_w = len(w.flatten())
    # w = np.arange(num_elem_w).reshape(w.shape)

    # 0, 16, 1, 17, 2, 18, 3, 19, 4, 20, 5, 21, 6, 22, 7, 23, 8, 24, 9, 25, 10, 26, 11, 27, 12, 28, 13, 29, 14, 30, 15, 31
    # for bits=3
    # bit0: [0, 8), bit1: [8, 16), bit2: [16, 24), bit0: [24, 32)
    # (M // bits // simd_n_float16, bits, simd_n_float16, K // g)
    w = w.reshape(M // bits // simd_n_out, simd_n_out, bits, K // g).transpose(0, 2, 1, 3)
    mgroup = ngroups_per_elem * simd_n_in
    #! After this, w[:, b, :, :] will contains specific bit slice.
    w = w.reshape(M // mgroup, ngroups_per_elem, simd_n_in, K // g).transpose(0, 2, 1, 3)

    # import pdb; pdb.set_trace()
    #             0        1             2          3                 4                  5
    w = w.reshape(M // bm, bm // mgroup, simd_n_in, ngroups_per_elem, K // g // kfactor, kfactor).transpose(0, 4, 1, 5, 2, 3)
    # w shape = (M // bm, K // g // kfactor, bm // mgroup, kfactor, simd_n_in, ngroups_per_elem)
    w = sum([(w[:, :, :, :, :, ng] << (ng * g)) for ng in range(ngroups_per_elem)])
    w = w.reshape(M // bm, K // g // kfactor, bm // mgroup, kfactor, simd_n_in)
    # input size of current TVM API
    w = w.reshape(M // bm, K // g, bm // ngroups_per_elem)

    if scales.size >= M // bits:
        group_size = K // scales.shape[1]
        scales = scales.reshape(M // bm, bm // bits, K // group_size).transpose(0, 2, 1)
        scales = scales.reshape(M // bm, K // group_size, bm // bits // simd_n_out, simd_n_out)
        if zeros is not None:
            zeros = zeros.reshape(M // bm, bm // bits, K // group_size).transpose(0, 2, 1)
            zeros = zeros.reshape(M // bm, K // group_size, bm // bits // simd_n_out, simd_n_out)
            scales = np.stack([scales, zeros], axis=-2)
        # input size of current TVM API
        scales = scales.reshape(M // bm, K // group_size, -1)
    else:
        if zeros is not None:
            scales = np.concatenate([scales, zeros])
    return w, scales

def weight_quant(weight, group_size, force_per_tensor=False):
    dtype = weight.dtype
    org_w_shape = list(weight.shape)
    M, K = weight.shape

    if not force_per_tensor:
        assert weight.shape[1] % group_size == 0, "group_size must be a divisor of weight.shape[1]"
        weight = weight.reshape(M, K // group_size, group_size).astype(np.float32)
        scale = 1 / np.clip(np.mean(np.abs(weight), axis=-1), a_min=1e-5, a_max=None)
        qweight = np.round(weight * np.expand_dims(scale, axis=-1)).clip(-1, 1)
        qweight = qweight.astype(dtype).reshape(org_w_shape)
    else:
        weight = weight.astype(np.float32)
        scale = 1 / np.clip(np.mean(np.abs(weight)), a_min=1e-5, a_max=None)
        qweight = np.round(weight * scale).clip(-1, 1)
        scale = scale * np.ones((M, K // group_size), dtype=dtype)

    return qweight, scale

# basic SQNR, larger is better
# def compute_error(x, y):
#     Ps = mx.linalg.norm(x)
#     Pn = mx.linalg.norm(x - y)
#     return 20 * mx.log10(Ps / Pn)

def compute_error(x, y):
    Ps = np.linalg.norm(x)
    Pn = np.linalg.norm(x - y)
    return 20 * np.log10(Ps / Pn)

def test_tmac_gemv():
    # 参数配置
    M, K, N = 3200, 3200, 1
    group_size = 128    # 量化分组大小
    bm = 128            # 块大小参数
    nbits = 2           # 2-bit量化
    g = 4               # 分组大小
    kfactor = 16        # 块大小参数
    act_group_size = 64
    out_dtype = np.float16

    activation = np.random.randn(N, K).astype(out_dtype)
    weight = np.random.randn(M, K)

    # activation = np.load("activation.npy")
    # weight = np.load("weight.npy")

    # 量化权重
    qweight, scale = weight_quant(weight, group_size, force_per_tensor=True)

    Aref = np.round(qweight + 2 ** (nbits - 1)).astype(np.uint8)
    Sref = (scale * np.ones((M, K // group_size)))
    Bref = activation
    Zref = None

    Adq = Aref.T.reshape(K // group_size, group_size, M).astype(out_dtype) - (2 ** (nbits - 1))
    Adq = Adq.transpose(1, 0, 2) * Sref.T
    if False:
        Adq = Adq - Zref.T
    Adq = Adq.transpose(1, 0, 2).reshape(K, M).astype(out_dtype)

    A_t, Scales_t = preprocess_weights(Aref, Sref, Zref, bits=nbits, g=g, bm=bm, kfactor=kfactor)

    mx_weight = mx.array(weight)
    mx_activation = mx.array(Bref)
    mx_qweight_qvals = mx.array(Aref)
    mx_scale = mx.array(Sref)
    mx_zero = None
    mx_A_t = mx.array(A_t)
    mx_Scales_t = mx.array(Scales_t, mx.float16)

    mx_Adq = mx.array(Adq)
    mx_real_ref = mx.matmul(mx_activation, mx_weight.T)
    mx_C_ref = mx.matmul(mx_activation, mx_Adq)
    mx.eval(mx_C_ref)
    mx.eval(mx_real_ref)

    # algo_error = compute_error(mx_real_ref, mx_C_ref)
    # print("algo_error = ", algo_error)

    # import pdb; pdb.set_trace()

    # 执行TMAC操作
    mx_output = mx.tmac_gemv(
        mx_activation,
        mx_A_t,
        mx_Scales_t,
        M=M,
        K=K,
        N=N,
        group_size=group_size,
        act_group_size=act_group_size,
        kfactor=kfactor,
        g=g,
        bm=bm,
        nbits=nbits,
        stream=mx.cpu
    )
    mx.eval(mx_output)

    print("mx_output = ", mx_output)
    print("mx_C_ref = ", mx_C_ref)
    print("mx_real_ref = ", mx_real_ref)

if __name__ == "__main__":
    test_tmac_gemv()