#pragma once
#include <vector>
#include <arm_neon.h>
// #include <omp.h>

class Embedding {
public:
    Embedding(int num_embeddings, int dims);
    ~Embedding();
    
    void forward(const std::vector<int>& indices, float* output) const;
    
    Embedding(const Embedding&) = delete;
    Embedding& operator=(const Embedding&) = delete;

private:
    int num_embeddings_;
    int dims_;
    float* weights_;
    bool aligned_;
    
    void neon_memcpy(float* dest, const float* src, size_t n) const;
};