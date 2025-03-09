import numpy as np

import mlx.core as mx

def mlx_weight_quant(weight, group_size, force_per_tensor=False):
    weight = mx.array(weight)
    dtype = weight.dtype
    org_w_shape = list(weight.shape)
    M, K = weight.shape

    if not force_per_tensor:
        assert weight.shape[1] % group_size == 0, "group_size must be a divisor of weight.shape[1]"
        weight = mx.reshape(weight, (M, K // group_size, group_size)).astype(mx.float32)
        scale = 1 / mx.clip(mx.mean(mx.abs(weight), axis=-1), a_min=1e-5, a_max=None)
        qweight = mx.round(weight * mx.expand_dims(scale, axis=-1))
        qweight = mx.minimum(mx.maximum(qweight, -1), 1)  # 替换clip方法
        qweight = qweight.astype(dtype).reshape(org_w_shape)
    else:
        weight = weight.astype(mx.float32)
        scale = 1 / mx.clip(mx.mean(mx.abs(weight)), a_min=1e-5, a_max=None)
        qweight = mx.round(weight * scale)
        qweight = mx.minimum(mx.maximum(qweight, -1), 1)  # 替换clip方法
        scale = scale * mx.ones((M, K // group_size), dtype=dtype)

    return qweight, scale

def np_weight_quant(weight, group_size, force_per_tensor=False):
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

if __name__ == "__main__":
    for _ in range(100):
        M, K = 3200, 3200
        group_size = 128
        weight = np.random.randn(M, K).astype(np.float16)
        force_per_tensor = True

        # Compute quantization using mlx
        mlx_qweight, mlx_scale = mlx_weight_quant(weight, group_size, force_per_tensor=force_per_tensor)
        mlx_qweight = np.array(mlx_qweight)
        mlx_scale = np.array(mlx_scale)

        # Compute quantization using numpy
        np_qweight, np_scale = np_weight_quant(weight, group_size, force_per_tensor)

        # Check if the outputs are consistent
        assert np.allclose(mlx_qweight, np_qweight), "Quantized weights do not match"
        assert np.allclose(mlx_scale, np_scale), "Scales do not match"

    print("Quantization consistency test passed!")

