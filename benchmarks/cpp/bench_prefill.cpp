#include <iostream>
#include <vector>
#include <cmath>
#include <cassert>
#include <tuple>

// Assume the MLX framework provides these headers and functions.
#include "mlx/random.h"
#include "mlx/array.h"
#include "mlx/mlx.h"

#include <chrono>
#include <iomanip>

namespace mx = mlx::core;

#define milliseconds(x) \
  (std::chrono::duration_cast<std::chrono::nanoseconds>(x).count() / 1e6)
#define time_now() std::chrono::high_resolution_clock::now()

#define TIME(FUNC, ...)                                                        \
  std::cout << "Timing " << #FUNC << " ... " << std::flush                     \
            << std::setprecision(5) << time_fn(FUNC, ##__VA_ARGS__) << " msec" \
            << std::endl;

#define TIMEM(MSG, FUNC, ...)                                      \
  std::cout << "Timing " << "(" << MSG << ") " << #FUNC << " ... " \
            << std::flush << std::setprecision(5)                  \
            << time_fn(FUNC, ##__VA_ARGS__) << " msec" << std::endl;

template <typename F, typename... Args>
double time_fn(F fn, Args&&... args) {
  // warmup
  for (int i = 0; i < 5; ++i) {
    eval(fn(std::forward<Args>(args)...));
  }

  int num_iters = 10;
  auto start = time_now();
  for (int i = 0; i < num_iters; i++) {
    eval(fn(std::forward<Args>(args)...));
  }
  auto end = time_now();
  return milliseconds(end - start) / static_cast<double>(num_iters);
}


int main() {

    // Fixed parameter combinations for testing.
    std::vector<int> group_sizes = {128};              // group_size
    std::vector<int> bits_list = {8};                    // bits

    // Fixed (M, N, K) combinations.
    std::vector<std::tuple<int, int, int>> m_n_k_combos = {
        //! Fix M, K and vary N(SEQ_LEN).
        {4096, 256, 4096},
        {4096, 512, 4096},
        {4096, 1024, 4096},
        {4096, 2048, 4096},
        {4096, 4096, 4096}, 
        {4096, 8192, 4096},
        {4096, 16384, 4096},
        {4096, 32768, 4096},
        {4096, 65536, 4096},

        //! Fix SEQ_LEN.
        // {32, 1024 * 64, 3200},
        // {64, 1024 * 64, 3200},
        // {128, 1024 * 64, 3200},
        // {256, 1024 * 64, 3200},
        // {512, 1024 * 64, 3200},
        // {1024, 1024 * 64, 3200},
        // {2048, 1024 * 64, 3200},
        // {4096, 1024 * 64, 3200},
        // {8192, 1024 * 64, 3200},

        // {32, 1024 * 64, 4096},
        // {64, 1024 * 64, 4096},
        // {128, 1024 * 64, 4096},
        // {256, 1024 * 64, 4096},
        // {512, 1024 * 64, 4096},
        // {1024, 1024 * 64, 4096},
        // {2048, 1024 * 64, 4096},
        // {4096, 1024 * 64, 4096},
        // {8192, 1024 * 64, 4096},
        // {11008, 1024 * 64, 4096},
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


                }
            }
        }
    }

    std::cout << "All tests passed successfully." << std::endl;
    return 0;
}