// Copyright © 2023 Apple Inc.

#include <iostream>
#include "mlx/mlx.h"
#include "mlx/array.h"
#include "time_utils.h"


namespace mx = mlx::core;

int main() {

    int nbits = 2;
    int bm = 256;  // 调整为M的因数 (8640 ÷ 480 = 18)
    int g = 4;
    int group_size = 128;
    int act_group_size = 64;
    int kfactor = 16;

    int n_threads = 12;

    // Fixed parameter combinations for testing.
    std::vector<int> group_sizes = {128};              // group_size
    std::vector<int> bits_list = {8};                    // bits

    // Fixed (M, N, K) combinations.
    std::vector<std::tuple<int, int, int>> m_n_k_combos = {
        // {4096, 1024 * 1, 4096},
        // {4096, 1024 * 2, 4096},
        // {4096, 1024 * 4, 4096},
        // {4096, 1024 * 8, 4096},
        // {4096, 1024 * 16, 4096},
        // {4096, 1024 * 32, 4096},
        // {4096, 1024 * 64, 4096},

        //! Decode
        {4096, 1, 4096},
        // {4096, 1, 11008},
        // {11008, 1, 4096},

        // {4096, 3, 4096},
        // {4096, 3, 11008},
        // {11008, 3, 4096},
    };

    for (auto [M, N, K] : m_n_k_combos) {

        int ngroups_per_elem = 8 / g;
        mx::array A_t = mx::random::randint(0, 255, {M * nbits / bm, K / g, bm / ngroups_per_elem}, mx::uint8);
        mx::array Scales_t = mx::random::uniform({M * nbits / bm, K / group_size, bm / nbits}, mx::float16);
        mx::array activation = mx::random::uniform({N, K}, mx::float16);

        A_t.eval();
        Scales_t.eval();
        activation.eval();

        std::cout << "Test case: M=" << M << ", N=" << N << ", K=" << K << ", nbits=" << nbits << std::endl;

        // std::cout << "A_t shape: [";
        // for (auto dim : A_t.shape()) {
        //     std::cout << dim << ", ";
        // }
        // std::cout << "]." << std::endl;

        // std::cout << "Scales_t shape: [";
        // for (auto dim : Scales_t.shape()) {
        //     std::cout << dim << " ";
        // }
        // std::cout << "]." << std::endl;

        // std::cout << "activation shape: [";
        // for (auto dim : activation.shape()) {
        //     std::cout << dim << ", ";
        // }
        // std::cout << "]." << std::endl;

        TIMEM(
            "tmac-gemv",
            mx::tmac_gemv,
            activation,
            A_t,
            Scales_t,
            M, K, N, nbits,
            mx::Device::cpu
        );
    }

    return 0;
}
