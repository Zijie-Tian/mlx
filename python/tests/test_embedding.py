import mlx.core as mx
import time
import numpy as np
from mlx.nn.layers import Embedding

def test_embedding_latency(
    warmup_runs=10, test_runs=100, batch_size=32, 
    seq_length=20, vocab_size=32000, embed_dim=4096):
    # 初始化Embedding层
    emb = Embedding(vocab_size, embed_dim)
    
    # 构造随机输入（假设Embedding接受整数索引）
    inputs = mx.random.randint(0, vocab_size, (1, seq_length))

    # warmup阶段：预热以便剔除首次调用的开销
    for _ in range(warmup_runs):
        _ = emb(inputs)

    # 测试阶段：多次运行并记录延迟
    latencies = []
    for _ in range(test_runs):
        start = time.perf_counter()
        out = emb(inputs)
        mx.eval(out)
        
        end = time.perf_counter()
        latencies.append((end - start) * 1000)  # 毫秒

    avg_latency = sum(latencies) / len(latencies)
    print("各次延迟（ms）：", latencies)
    print("平均延迟（ms）：", avg_latency)

if __name__ == '__main__':
    test_embedding_latency()
