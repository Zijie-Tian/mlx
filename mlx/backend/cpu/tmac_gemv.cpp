// Copyright © 2023-2024 Apple Inc.

#include <cstring>
#include <iostream>
#include "mlx/array.h"
#include "mlx/backend/cpu/copy.h"
#include "mlx/backend/cpu/gemm.h"
#include "mlx/primitives.h"
#include "mlx/ops.h"

#include <mlx/backend/cpu/tmac/kernels.h>
// #include "mlx/backend/cpu/buffer.h"  // 添加buffer头文件

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
    array QLUT = zeros({this -> N_, this -> K_ / this -> g_, 1 << this -> g_}, int8);
    array LUT_Scales = zeros({this -> N_, this -> K_ / this -> act_group_size_}, float16);
    array LUT_Biases = zeros({this -> N_, this -> K_ / this -> act_group_size_}, float16);
    QLUT.eval();
    LUT_Scales.eval();
    LUT_Biases.eval();

    //! ============= Turn to void pointer. =============
    // 修正缓冲区转换方式
    auto activations_buf = inputs[0].data<float16_t>();
    auto qweight_buf = inputs[1].data<uint8_t>();
    auto scales_buf = inputs[2].data<float16_t>();

    void* activations_ptr = (void*)activations_buf;
    void* qweight_ptr = (void*)qweight_buf;
    void* scales_ptr = (void*)scales_buf;

    // 获取指针的正确方式
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
        activations_ptr,
        lut_scales_buf,
        lut_biases_buf,
        qlut_buf
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

    // TODO : Add for loop for each BM.
    int ngroups_per_elem = 8 / this->g_;
    for(int m_tile_idx = 0; m_tile_idx < this->M_ / (this->bm_ / ngroups_per_elem); m_tile_idx++) {
        int ret = qgemm_lut_int8(
            this->bm_,
            this->K_,
            this->N_,
            this->nbits_,
            (void *)(qweight_buf + (this->K_ / this->g_) * m_tile_idx * this->bm_ / ngroups_per_elem), 
            qlut_buf,
            scales_ptr,
            lut_scales_buf,
            lut_biases_buf, 
            (void *)(output_buf + m_tile_idx * this->bm_ / ngroups_per_elem)
        );
        if (ret != 0) {
            std::cout << "qgemm_lut_int8 failed with Parameters : " <<
                "m = " << this->bm_ <<
                ", k = " << this->K_ <<
                ", n = " << this->N_ <<
                ", b = " << this->nbits_ << std::endl;
            return;
        }
    }
}


}

