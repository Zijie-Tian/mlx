// Copyright © 2023-2024 Apple Inc.

#include <cstring>
#include <iostream>
#include <vector>
#include <future>
#include "mlx/array.h"
#include "mlx/backend/cpu/copy.h"
#include "mlx/backend/cpu/gemm.h"
#include "mlx/primitives.h"
#include "mlx/ops.h"

#include <mlx/backend/cpu/tmac/kernels.h>
#include <mlx/threadpool.h>
// #include "mlx/backend/cpu/buffer.h"  // 添加buffer头文件


#define milliseconds(x) \
  (std::chrono::duration_cast<std::chrono::nanoseconds>(x).count() / 1e6)
#define time_now() std::chrono::high_resolution_clock::now()

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
    std::memset(output.data<void>(), 0, output.nbytes());
    if (inputs[0].shape(-1) == 0 || inputs[1].shape(-1) == 0) {
        //! Not Allocated.
        return;
    }

    //! =============      Allocate vars.   =============
    array QLUT = inputs[3];
    array LUT_Scales = inputs[4];
    array LUT_Biases = inputs[5];
    QLUT.set_data(allocator::malloc_or_wait(QLUT.nbytes()));
    LUT_Scales.set_data(allocator::malloc_or_wait(LUT_Scales.nbytes()));
    LUT_Biases.set_data(allocator::malloc_or_wait(LUT_Biases.nbytes()));
    // array QLUT = zeros({this -> N_, this -> K_ / this -> g_, 1 << this -> g_}, int8);
    // array LUT_Scales = zeros({this -> N_, this -> K_ / this -> act_group_size_}, float16);
    // array LUT_Biases = zeros({this -> N_, this -> K_ / this -> act_group_size_}, float16);
    // QLUT.eval();
    // LUT_Scales.eval();
    // LUT_Biases.eval();

    //! ============= Turn to void pointer. =============
    // 修正缓冲区转换方式
    auto activations_buf = inputs[0].data<float16_t>();
    auto qweight_buf = inputs[1].data<uint8_t>();
    auto scales_buf = inputs[2].data<float16_t>();
    auto qlut_buf = QLUT.data<uint8_t>();
    auto lut_scales_buf = LUT_Scales.data<float16_t>();
    auto lut_biases_buf = LUT_Biases.data<float16_t>();
    auto output_buf = output.data<float16_t>();

    // 修正函数调用参数
    int err_no = preprocessor_int8(
        this->M_ * this->nbits_,
        this->K_,
        this->N_,
        this->nbits_,
        (void*)activations_buf,
        (void*)lut_scales_buf,
        (void*)lut_biases_buf,
        (void*)qlut_buf
    );
    if (err_no != 0) {
        std::cout << "preprocessor_int8 failed with Parameters : " <<
            "m = " << this->bm_ <<
            ", k = " << this->K_ <<
            ", n = " << this->N_ <<
            ", b = " << this->nbits_ << std::endl;
        return;   
    }

    // std::cout << "preprocessor_int8 done!" << std::endl;
    // std::cout << "QLUT: " << QLUT << "shape : " << QLUT.shape() << std::endl;
    // std::cout << "LUT_Scales: " << LUT_Scales << "shape : " << LUT_Scales.shape() << std::endl;
    // std::cout << "LUT_Biases: " << LUT_Biases << "shape : " << LUT_Biases.shape() << std::endl;
    // std::cout << "qgemm_output: " << qgemm_output << "shape : " << qgemm_output.shape() << std::endl;
    // std::cout << "Scales :" << inputs[2] << "shape : " << inputs[2].shape() << std::endl;

    std::vector<std::future<int>> bm_tiles;
    int ngroups_per_elem = 8 / this->g_;
    for(int m_tile_idx = 0; m_tile_idx < this->M_ / (this->bm_ / ngroups_per_elem); m_tile_idx++) {
        bm_tiles.emplace_back(this->pool_.enqueue(std::bind(
                    &qgemm_lut_int8,
                    this->bm_,
                    this->K_,
                    this->N_,
                    this->nbits_,
                    (void *)(qweight_buf + (this->K_ / this->g_) * m_tile_idx * this->bm_ / ngroups_per_elem), 
                    (void *)qlut_buf,
                    (void *)scales_buf,
                    (void *)lut_scales_buf,
                    (void *)lut_biases_buf, 
                    (void *)(output_buf + m_tile_idx * this->bm_ / ngroups_per_elem)
                )
            )
        );
    }
    for (auto& tile : bm_tiles) {
        tile.wait();
    }
}


}

