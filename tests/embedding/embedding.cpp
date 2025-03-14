#include "embedding.hpp"
#include <cstdlib>
#include <cmath>
#include <stdexcept>

Embedding::Embedding(int num_embeddings, int dims) 
    : num_embeddings_(num_embeddings), dims_(dims), aligned_(true) {
    
    const size_t alignment = 16; // NEON需要16字节对齐
    const size_t size = num_embeddings * dims * sizeof(float);
    
    // 申请对齐内存
    if (posix_memalign((void**)&weights_, alignment, size) != 0) {
        throw std::bad_alloc();
    }
    
    // 初始化权重
    const float scale = std::sqrt(1.0f / dims);
    #pragma omp parallel for
    for (int i = 0; i < num_embeddings * dims; ++i) {
        weights_[i] = (static_cast<float>(rand()) / RAND_MAX) * 2 * scale - scale;
    }
}

Embedding::~Embedding() {
    if (weights_) {
        free(weights_);
    }
}

void Embedding::neon_memcpy(float* dest, const float* src, size_t n) const {
    size_t i = 0;
    
    // NEON向量化拷贝（每次处理4个float）
    for (; i + 4 <= n; i += 4) {
        float32x4_t vec = vld1q_f32(src + i);
        vst1q_f32(dest + i, vec);
    }
    
    // 处理剩余元素
    for (; i < n; ++i) {
        dest[i] = src[i];
    }
}

void Embedding::forward(const std::vector<int>& indices, float* output) const {
    const int batch_size = indices.size();
    
    #pragma omp parallel for schedule(static)
    for (int i = 0; i < batch_size; ++i) {
        const int idx = indices[i];
        if (idx < 0 || idx >= num_embeddings_) {
            throw std::out_of_range("Embedding index out of range");
        }
        
        const float* src = weights_ + idx * dims_;
        float* dest = output + i * dims_;
        
        if (aligned_ && (dims_ % 4 == 0)) {
            neon_memcpy(dest, src, dims_);
        } else {
            std::memcpy(dest, src, dims_ * sizeof(float));
        }
    }
}