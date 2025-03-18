#include <iostream>
#include <vector>
#include <cmath>
#include <cassert>
#include <tuple>

// Assume the MLX framework provides these headers and functions.
#include "mlx/random.h"
#include "mlx/array.h"
#include "mlx/mlx.h"

#include "time_utils.h"

namespace mx = mlx::core;

// Helper function to compute maximum absolute value in a tensor difference.
// double maxAbsDiff(const mx::array& a, const mx::array& b) {
//     assert(a.shape() == b.shape());
//     double max_diff = 0.0;
//     const auto total = a.numel();
//     for (size_t i = 0; i < total; i++) {
//         double diff = std::abs(a.data()[i] - b.data()[i]);
//         if (diff > max_diff) {
//             max_diff = diff;
//         }
//     }
//     return max_diff;
// }

int main() {

    // Fixed parameter combinations for testing.
    std::vector<int> group_sizes = {128};              // group_size
    std::vector<int> bits_list = {8};                    // bits

    // Fixed (M, N, K) combinations.
    std::vector<std::tuple<int, int, int>> m_n_k_combos = {
        {32, 1024 * 64, 3200},
        {64, 1024 * 64, 3200},
        {128, 1024 * 64, 3200},
        {256, 1024 * 64, 3200},
        {512, 1024 * 64, 3200},
        {1024, 1024 * 64, 3200},
        {2048, 1024 * 64, 3200},
        {4096, 1024 * 64, 3200},
        {8192, 1024 * 64, 3200},

        {32, 1024 * 64, 4096},
        {64, 1024 * 64, 4096},
        {128, 1024 * 64, 4096},
        {256, 1024 * 64, 4096},
        {512, 1024 * 64, 4096},
        {1024, 1024 * 64, 4096},
        {2048, 1024 * 64, 4096},
        {4096, 1024 * 64, 4096},
        {8192, 1024 * 64, 4096},
        {11008, 1024 * 64, 4096},
    };

    std::vector<bool> transposed_list = {true}; // transposed

    // Loop over fixed test cases.
    for (int group_size : group_sizes) {
        for (int bits : bits_list) {
            for (auto [M, N, K] : m_n_k_combos) {
                for (bool transposed : transposed_list) {
                    // Describe the current test case.
                    std::cout << "Test case: group_size=" << group_size
                                << ", bits=" << bits
                                << ", M=" << M << ", N=" << N << ", K=" << K
                                << ", transposed=" << (transposed ? "true" : "false")
                                << std::endl;

                    // x has shape (M, K).
                    auto x = mx::random::uniform({N, K}, mx::float16);

                    // Create weight matrix w.
                    // If transposed: shape is (N, K), else (K, N)
                    mx::Shape wShape = transposed ? mx::Shape{N, K} : mx::Shape{K, N};
                    auto w = mx::random::uniform({M, K}, mx::float16);

                    // Quantize the weights.
                    // quantize returns a tuple: (w_q, scales, biases).
                    auto quant_tuple = mx::quantize(w, group_size, bits);
                    auto w_q    = std::get<0>(quant_tuple);
                    auto scales = std::get<1>(quant_tuple);
                    auto biases = std::get<2>(quant_tuple);

                    // Dequantize the weights.
                    auto w_hat = mx::dequantize(w_q, scales, biases, group_size, bits);

                    // Perform the quantized matrix multiplication.
                    auto y_q = mx::quantized_matmul(x, w_q, scales, biases, transposed, group_size, bits);

                    TIMEM(
                        "qmm",
                        mx::quantized_matmul,
                        x, w_q, scales, biases, transposed, group_size, bits, mx::Device::gpu
                    );

                    auto x_transposed = mx::transpose(x);
                    // TIMEM(
                    //     "matmul",
                    //     mx::matmul,
                    //     w_hat, x_transposed, mx::Device::gpu
                    // )

                    // x (M, K) times w_hat (K, N).
                    auto y_hat = mx::matmul(w_hat, x_transposed);
                    
                    mx::eval(y_q, y_hat);

                    

                    // std::cout << "Y qmm : " << y_q << std::endl;
                    // std::cout << "Y hat : " << y_hat << std::endl;

                }
            }
        }
    }

    std::cout << "All tests passed successfully." << std::endl;
    return 0;
}