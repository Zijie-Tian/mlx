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
    // 创建输入数据
    int M_low = 4096;  // 原值为8640/2，调整为可被bm整除的值
    // int K = 4096;
    // int N = 1024 * 64;
    // int N = 256;
    // int N = 1024;

    int nbits_low = 2;
    int bm = 512;
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
        {256, 1024 * 4, 4096},
        {512, 1024 * 4, 4096},
        {1024, 1024 * 4, 4096},
        {2048, 1024 * 4, 4096},
        {4096, 1024 * 4, 4096},
    };

    std::vector<bool> transposed_list = {true}; // transposed

    // Loop over fixed test cases.
    for (int group_size_high : group_sizes) {
        for (int nbits_high : bits_list) {
            for (auto [M_high, N, K] : m_n_k_combos) {
                for (bool transposed_high : transposed_list) {
                    // Describe the current test case.
                    M_high = M_high * 16;
                    
                    std::cout << "Test case: group_size=" << group_size_high
                                << ", bits=" << nbits_high
                                << ", M=" << M_high << ", N=" << N << ", K=" << K
                                << ", transposed=" << (transposed_high ? "true" : "false")
                                << std::endl;

                    // x has shape (M, K).
                    mx::array activation = mx::random::uniform({N, K}, mx::float16);
                    // auto x = mx::random::uniform({N, K}, mx::float16);

                    // Create weight matrix w.
                    // If transposed: shape is (N, K), else (K, N)
                    mx::Shape wShape = transposed_high ? mx::Shape{N, K} : mx::Shape{K, N};
                    auto w = mx::random::uniform({M_high, K}, mx::float16);

                    //! Quantize the weights.
                    auto quant_tuple    =   mx::quantize(w, group_size, nbits_high);
                    auto qweight_high   =  std::get<0>(quant_tuple);
                    auto scales_high    = std::get<1>(quant_tuple);
                    auto biases_high    = std::get<2>(quant_tuple);

                    //! TMAC side vars.
                    int ngroups_per_elem = 8 / g;
                    mx::array qweight_low = mx::random::randint(0, 255, {M_low * nbits_low / bm, K / g, bm / ngroups_per_elem}, mx::uint8);
                    mx::array scales_low = mx::random::uniform({M_low * nbits_low / bm, K / group_size, bm / nbits_low}, mx::float16);
                    mx::array biases_low = mx::random::uniform({M_low * nbits_low / bm, K / group_size, bm / nbits_low}, mx::float16);

                    // Dequantize the weights.
                    auto w_hat = mx::dequantize(qweight_high, scales_high, biases_high, group_size, nbits_high);

                    mx::eval(activation, qweight_low, scales_low, biases_low);

                    // Perform the quantized matrix multiplication.
                    auto y_q = mx::fast::hermes_op(
                        activation, 
                        qweight_high, scales_high, biases_high, 
                        qweight_low, scales_low, biases_low,
                        M_high, M_low, K, N, 
                        transposed_high,
                        group_size_high, nbits_high, nbits_low,
                        mx::Device::gpu
                    );

                    TIMEM(
                        "qmm",
                        mx::fast::hermes_op,
                        activation,
                        qweight_high, scales_high, biases_high,
                        qweight_low, scales_low, biases_low,
                        M_high, M_low, K, N,
                        transposed_high,
                        group_size_high, nbits_high, nbits_low,
                        mx::Device::gpu
                    );

                    auto x_transposed = mx::transpose(activation);
                    // TIMEM(
                    //     "matmul",
                    //     mx::matmul,
                    //     w_hat, x_transposed, mx::Device::gpu
                    // )

                    // x (M, K) times w_hat (K, N).
                    auto y_hat = mx::matmul(w_hat, x_transposed);
                    
                    mx::eval(y_hat, y_q);

                    // std::cout << "Y qmm : " << y_q << std::endl;
                    // std::cout << "Y hat : " << y_hat << std::endl;
                    // std::cout << "Y hat shape: ";
                    // for (auto dim : y_hat.shape()) {
                    //     std::cout << dim << " ";
                    // }
                    // std::cout << std::endl;

                }
            }
        }
    }

    std::cout << "All tests passed successfully." << std::endl;
    return 0;
}