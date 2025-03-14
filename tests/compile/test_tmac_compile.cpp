// Copyright © 2023 Apple Inc.

#include <iostream>
#include <sstream>
#include <vector>
#include "mlx/mlx.h"
#include "mlx/array.h"
#include "mlx/backend/cpu/gemm.h"
#include "mlx/ops.h"
#include "time_utils.h"

namespace mx = mlx::core;

int main() {
    // TMAC parameters and dimensions
    int M = 8640;
    int K = 3200;
    int N = 1;
    int nbits = 2;
    int bm = 128;
    int g = 4;
    int group_size = 128;
    int act_group_size = 64;
    int kfactor = 16;
    int n_threads = 12;

    int M_down = 3200;
    // Compute the last dim based on bm and g.
    int last_dim = bm / (8 / g);

    // Prepare input arrays for tmac_gemv, with A replacing a_down_t.
    mx::array activation = mx::random::uniform({N, K}, mx::float16);
    mx::array A_t = mx::random::randint(0, 255, {M / bm, K / g, last_dim}, mx::uint8);
    mx::array Scales_t = mx::random::uniform({M / bm, K / group_size, bm / nbits}, mx::float16);
    mx::array b = mx::random::uniform({K, N}, mx::float16);
    mx::array QLUT = mx::zeros({N, K / g, 1 << g}, mx::uint8);
    mx::array LUT_Scales = mx::zeros({N, K / act_group_size}, mx::float16);
    mx::array LUT_Biases = mx::zeros({N, K / act_group_size}, mx::float16);

    // Evaluate all inputs.
    A_t.eval();
    Scales_t.eval();
    b.eval();
    QLUT.eval();
    LUT_Scales.eval();
    LUT_Biases.eval();

    // Lambda for a direct call to tmac_gemv (including transpose and evaluation)
    auto direct_call = [&]() -> mx::array {
        mx::array c_down = mx::tmac_gemv(
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
        c_down = mx::transpose(c_down, {1, 0});
        c_down.eval();
        return c_down;
    };

    // Test direct (non-compiled) call latency.
    int iterations = 1000;
    auto start_direct = time_now();
    for (int i = 0; i < iterations; ++i) {
        direct_call();
    }
    auto end_direct = time_now();
    auto dt_direct = end_direct - start_direct;
    std::cout << "Direct call average latency: " 
              << dt_direct.count() / (1000000.0 * iterations) << " ms" << std::endl;

    // Create a compute graph that just calls tmac_gemv.
    auto compute_graph = [&](const std::vector<mx::array>& inputs) -> std::vector<mx::array> {
        mx::array activation = inputs[0];
        mx::array A_t = inputs[1];
        mx::array Scales_t = inputs[2];
        mx::array b = inputs[3];
        mx::array QLUT = inputs[4];
        mx::array LUT_Scales = inputs[5];
        mx::array LUT_Biases = inputs[6];

        mx::array c_down = mx::tmac_gemv(
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
        c_down = mx::transpose(c_down, {1, 0});
        return {c_down};
    };

    // Compile the compute graph.
    auto compiled_fn = mx::compile(compute_graph);

    // Prepare input vector.
    std::vector<mx::array> inputs = { activation, A_t, Scales_t, b, QLUT, LUT_Scales, LUT_Biases };

    // Warm-up compiled function.
    compiled_fn(inputs)[0].eval();

    // Test compiled function latency.
    auto start_compiled = time_now();
    for (int i = 0; i < iterations; ++i) {
        auto result = compiled_fn(inputs)[0];
        result.eval();
    }
    auto end_compiled = time_now();
    auto dt_compiled = end_compiled - start_compiled;
    std::cout << "Compiled call average latency: " 
              << dt_compiled.count() / (1000000.0 * iterations) << " ms" << std::endl;

    return 0;
}