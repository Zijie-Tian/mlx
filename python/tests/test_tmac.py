import mlx.core as mx
import numpy as np

def test_tmac_gemv():
    # 参数配置
    M, K, N = 128, 256, 512
    group_size = 64  # 量化分组大小
    bm = 32          # 块大小参数
    nbits = 4        # 4-bit量化
    
    # 生成测试数据
    activation = mx.random.uniform(shape=(M, K))
    qweight_qvals = mx.random.randint(0, 15, shape=(K//2, N))  # 模拟4-bit量化值
    scales = mx.random.uniform(shape=(K//group_size, N))       # 缩放因子
    
    # 执行TMAC操作
    output = mx.tmac_gemv(
        activation,
        qweight_qvals,
        scales,
        M=M,
        K=K,
        N=N,
        group_size=group_size,
        bm=bm,
        nbits=nbits,
        stream=mx.cpu
    )
    
    # 验证输出形状
    assert output.shape == (M, N), f"Shape mismatch: {output.shape} vs ({M}, {N})"
    
    # 验证数值范围（示例校验）
    assert mx.all(mx.isfinite(output)), "Output contains NaN/Inf values"
    
    print("TMAC gemv test passed!")

if __name__ == "__main__":
    test_tmac_gemv()