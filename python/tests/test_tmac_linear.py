import mlx.core as mx
from mlx.nn.layers import Linear
from mlx.nn.layers.quantized import QuantizedLinear, TMACQuantizedLinear

import numpy as np
from typing import Tuple, Optional


if __name__ == "__main__":
    M, K, N = 3200, 3200, 1
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
        shape=(N, K),
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
    )

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

    output = linear(activation)
    ql_output = ql(activation)

    print("Quantized Linear output : ", ql_output)
    print("Linear output : ", output)

    import pdb; pdb.set_trace()


