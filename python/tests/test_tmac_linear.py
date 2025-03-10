import mlx.core as mx
from mlx.nn.layers import Linear
from mlx.nn.layers.quantized import QuantizedLinear, TMACQuantizedLinear

import numpy as np
from typing import Tuple, Optional

import mlx.core as mx
import mlx.nn as nn

def weight_quant(weight: mx.array, num_bits: int = 1) -> mx.array:
    dtype = weight.dtype
    weight = weight.astype(mx.float32)
    s = 1 / mx.maximum(mx.abs(weight).mean(), 1e-5)  # 替换clip为mx.maximum
    result = mx.minimum(mx.maximum((weight * s).round(), -1), 1) / s  # 替换clip
    return result.astype(dtype)

def activation_quant(x: mx.array, num_bits: int = 8) -> mx.array:
    dtype = x.dtype
    x = x.astype(mx.float32)
    Qn = - (2 ** (num_bits - 1))
    Qp = (2 ** (num_bits - 1)) - 1
    # 使用mx.maximum替换clip
    s = Qp / mx.maximum(mx.abs(x).max(axis=-1, keepdims=True), 1e-5)
    # 使用mx.minimum/maximum组合替换clip
    result = mx.minimum(mx.maximum((x * s).round(), Qn), Qp) / s
    return result.astype(dtype)

class BitLinear(Linear):
    def __init__(
        self,
        input_dims: int,
        output_dims: int,
        weight_bits: int = 1,
        input_bits: int = 8,
        bias: bool = True,
    ):
        super().__init__(input_dims, output_dims, bias=bias)
        self.weight_bits = weight_bits
        self.input_bits = input_bits

    def __call__(self, x: mx.array) -> mx.array:
        # 输入量化（带梯度截断）
        quant_input = x + mx.stop_gradient(activation_quant(x, self.input_bits) - x)
        
        # 权重量化（带梯度截断）
        quant_weight = self.weight + mx.stop_gradient(
            weight_quant(self.weight, self.weight_bits) - self.weight
        )
        
        # 执行线性计算
        out = mx.matmul(quant_input, quant_weight.T)
        
        # 添加偏置项（如果存在）
        if "bias" in self:
            out += self.bias
            
        return out


if __name__ == "__main__":
    M, K, N = 8640, 3200, 1
    group_size = 128    # 量化分组大小
    bm = 128            # 块大小参数
    nbits = 2           # 2-bit量化
    g = 4               # 分组大小
    kfactor = 16        # 块大小参数
    act_group_size = 64
    out_dtype = np.float16

    # 修改前错误调用
    # activation = mx.random.normal(0.0, 1.0, (N, K), mx.float16)
    
    # 修改后正确调用
    activation = mx.random.normal(
        shape=(1, N, K),
        dtype=mx.float16,
        loc=0.0,
        scale=1.0
    )
    linear = Linear(K, M, bias=False)
    linear.weight = mx.random.normal(
        shape=(M, K),
        dtype=mx.float16,
        loc=0.0,
        scale=1.0
    ) / 100
    bitlinear = BitLinear(K, M, weight_bits=nbits, input_bits=8, bias=False)
    bitlinear.weight = linear.weight

    # linear.weight = mx.array(np.load("weight.npy"), dtype=mx.float16)
    # activation = mx.array(np.load("activation.npy"), dtype=mx.float16)

    ql = TMACQuantizedLinear.from_linear(
        linear,
        M, K, N,
        group_size=group_size,
        act_group_size=act_group_size,
        kfactor=kfactor,
        g=g,
        bm=bm,
        nbits=nbits,
        n_threads=12,
        stream=mx.cpu,
        bias=False
    )

    Adq = ql.Adq

    output = linear(activation)
    ql_output = ql(activation)
    dq_ref = mx.matmul(activation, Adq)
    bitlinear_output = bitlinear(activation)

    print("dq_ref = ", dq_ref)
    print("BitLinear output : ", bitlinear_output)
    print("Quantized Linear output : ", ql_output)
    print("Linear output : ", output)

    import pdb; pdb.set_trace()


