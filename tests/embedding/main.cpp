#include "embedding.hpp"
#include <iostream>
#include <chrono>
#include <vector>
#include <random>

int main() {
    // 参数设置
    constexpr int num_embeddings = 32000; // 10万词表
    constexpr int dims = 4096;              // 256维
    constexpr int batch_size = 1;      // 64k batch
    constexpr int warmup = 10;             // 预热次数
    constexpr int tests = 100;             // 测试次数
    
    // 初始化
    Embedding emb(num_embeddings, dims);
    std::vector<int> indices(batch_size);
    
    // 生成随机索引
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis(0, num_embeddings-1);
    for (auto& idx : indices) {
        idx = dis(gen);
    }
    
    // 申请输出内存（对齐）
    float* output = static_cast<float*>(aligned_alloc(32, batch_size*dims*sizeof(float)));
    
    // 预热
    for (int i = 0; i < warmup; ++i) {
        emb.forward(indices, output);
    }
    
    // 性能测试
    auto start = std::chrono::high_resolution_clock::now();
    for (int i = 0; i < tests; ++i) {
        emb.forward(indices, output);
    }
    auto end = std::chrono::high_resolution_clock::now();
    
    // 计算耗时
    auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - start);
    double avg_time = duration.count() / 1000.0 / tests; // ms per batch
    double tokens_per_sec = batch_size / (avg_time / 1000);
    
    std::cout << "Performance:\n"
              << "  Batch size: " << batch_size << "\n"
              << "  Embedding dim: " << dims << "\n"
              << "  Avg time per batch: " << avg_time << " ms\n"
              << "  Tokens/sec: " << tokens_per_sec << " million\n";
    
    free(output);
    return 0;
}