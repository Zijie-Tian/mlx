// Copyright © 2023 Apple Inc.

#include <iostream>
#include "mlx/mlx.h"
#include "mlx/array.h"
#include "time_utils.h"


namespace mx = mlx::core;

int main() {
    // 创建输入数据
    int M = 3200;
    int K = 3200;
    int N = 1;

    int nbits = 2;
    int bm = 128;
    int g = 4;
    int group_size = 128;
    int act_group_size = 64;
    int kfactor = 16;

    int ngroups_per_elem = 8 / g;
    mx::array A_t = mx::random::randint(0, 255, {M / bm, K / g, bm / ngroups_per_elem}, mx::uint8);
    mx::array Scales_t = mx::random::uniform({M / bm, K / group_size, bm / nbits}, mx::float16);
    mx::array activation = mx::random::uniform({N, K}, mx::float16);
    // mx::array A_t = mx::zeros({M / bm, K / g, bm / ngroups_per_elem}, mx::uint8);
    // mx::array Scales_t = mx::zeros({M / bm, K / group_size, bm / nbits}, mx::float16);
    // mx::array activation = mx::zeros({N, K}, mx::float16);
    mx::array QLUT = mx::zeros({N, K / g, 1 << g}, mx::uint8);
    mx::array LUT_Scales = mx::zeros({N, K / act_group_size}, mx::float16);
    mx::array LUT_Biases = mx::zeros({N, K / act_group_size}, mx::float16);

    A_t.eval();
    Scales_t.eval();
    activation.eval();

    std::cout << "A_t : " << A_t << std::endl;
    std::cout << "Scales_t : " << Scales_t << std::endl;
    std::cout << "activation : " << activation << std::endl;

    mx::array output = zeros({N, M}, mx::float16);
    for (int i = 0; i < 10; ++i) {
        output = mx::tmac_gemv(
            activation,
            A_t,
            Scales_t,
            QLUT,
            LUT_Scales,
            LUT_Biases,
            M, K, N,
            group_size, 
            act_group_size,
            kfactor, g, bm, nbits,
            mx::Device::cpu
        );
        output.eval();
    }

    auto start_time = time_now();
    output = mx::tmac_gemv(
        activation,
        A_t,
        Scales_t,
        QLUT,
        LUT_Scales,
        LUT_Biases,
        M, K, N,
        group_size, 
        act_group_size,
        kfactor, g, bm, nbits,
        mx::Device::cpu
    );
    output.eval();
    std::cout << "output : " << output << std::endl;
    auto end_time = time_now();
    std::cout << "tmac-gemv time: " << milliseconds(end_time - start_time) << " ms" << std::endl;

    // TIMEM(
    //     "tmac-gemv",
    //     mx::tmac_gemv,
    //     activation,
    //     A_t,
    //     Scales_t,
    //     M, K, N,
    //     group_size,
    //     act_group_size,
    //     kfactor, g, bm, nbits,
    //     mx::Device::cpu
    // );

    return 0;
}