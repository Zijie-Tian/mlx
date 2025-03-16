// Copyright © 2023 Apple Inc.

#include <iostream>
#include "mlx/mlx.h"
#include "mlx/array.h"
#include "time_utils.h"


namespace mx = mlx::core;

int main() {
    // 创建输入数据
    int M = 1600;  // 原值为8640/2，调整为可被bm整除的值
    int K = 3200;
    int N = 1;

    int nbits = 2;
    int bm = 160;  // 调整为M的因数 (8640 ÷ 480 = 18)
    int g = 4;
    int group_size = 128;
    int act_group_size = 64;
    int kfactor = 16;

    int n_threads = 12;

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

    TIMEM(
        "tmac-gemv",
        mx::tmac_gemv,
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
        n_threads,
        mx::Device::cpu
    );

    mx::array weight = mx::ones({K, M}, mx::float16);
    weight.eval();

    auto matvec = [&]() { return mx::matmul(activation, weight, mx::Device::gpu); };

    TIMEM(
        "matmul",
        matvec
    )

    return 0;
}
