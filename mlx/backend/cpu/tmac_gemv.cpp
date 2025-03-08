// Copyright © 2023-2024 Apple Inc.

#include <cstring>
#include <iostream>
#include "mlx/array.h"
#include "mlx/backend/cpu/copy.h"
#include "mlx/backend/cpu/gemm.h"
#include "mlx/primitives.h"

#include "tmac/kernels.h"

namespace mlx::core {

/**
 * @brief 计算T-MAC矩阵乘法
 * 
 * @param packed_qweight    (inputs[0])     量化权重矩阵
 * @param activations       (inputs[1])     激活矩阵
 * @param Scales_t          (inputs[2])     缩放因子
 * @param outputs           (outputs[0])    输出矩阵
 */
void TMACMatmul::eval_cpu(const std::vector<array>& inputs, array& output) {
    output.set_data(allocator::malloc_or_wait(output.nbytes()));
    if (inputs[0].shape(-1) == 0) {
        //! Not Allocated.
        std::memset(output.data<void>(), 0, output.nbytes());
        return;
    }

    auto& packed_qweight = inputs[0];
    auto& activations = inputs[1];

    // Print the shapes of the input arrays
    std::cout << "Shape of packed_qweight: ";
    for (auto dim : packed_qweight.shape()) {
        std::cout << dim << " ";
    }
    std::cout << std::endl;

    std::cout << "Shape of activations: ";
    for (auto dim : activations.shape()) {
        std::cout << dim << " ";
    }
    std::cout << std::endl;

    std::memset(output.data<void>(), 0, output.nbytes());

    
    // // 获取A数组的原始数据指针
    // auto a_buf = A.data()->as<CPUBuffer>();
    // void* a_ptr = a_buf->data();
    
    // // 获取B数组的原始数据指针 
    // auto b_buf = B.data()->as<CPUBuffer>();
    // void* b_ptr = b_buf->data();
}


}

