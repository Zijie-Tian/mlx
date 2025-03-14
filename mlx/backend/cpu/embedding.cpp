#include <vector>
#include <arm_neon.h>
#include <cstdlib>
#include <cmath>
#include <stdexcept>

#include "mlx/primitives.h"

namespace mlx::core {


Embedding::Embedding(Stream stream, int num_embeddings, int dims) 
    : UnaryPrimitive(stream), num_embeddings(num_embeddings), dims(dims), aligned(true) {
    
    const size_t alignment = 16; // NEON需要16字节对齐
    const size_t size = num_embeddings * dims * sizeof(float);
}

Embedding::~Embedding() {}

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

void Embedding::eval_cpu(const std::vector<array>& inputs, array& out) {
    out.set_data(allocator::malloc_or_wait(out.nbytes()));
    if (inputs[0].shape(-1) == 0) {
        std::memset(out.data<void>(), 0, out.nbytes());
        return;
    }

    // TODO : Need make sure aligned.
    array weights = inputs[0];
    array indices = inputs[1];

    float* weight_ = weights.data<float>();
    int* indices_ = indices.data<int>();
    float* output = out.data<float>();

    const int num_indices = indices.shape(0);
    
    #pragma omp parallel for schedule(static)
    for (int i = 0; i < num_indices; ++i) {
        const int idx = 0;  // TODO : Need to be modified.
        if (idx < 0 || idx >= num_embeddings) {
            throw std::out_of_range("Embedding index out of range");
        }
        
        const float* src = weight_ + idx * dims;
        float* dest = output + i * dims;
        
        if (aligned && (dims % 4 == 0)) {
            neon_memcpy(dest, src, dims);
        } else {
            std::memcpy(dest, src, dims * sizeof(float));
        }
    }
}

} // namespace mlx::core