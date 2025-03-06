// Copyright © 2023 Apple Inc.

#include <iostream>
#include "mlx/mlx.h"
#include "mlx/compile.h"
#include "time_utils.h"

namespace mx = mlx::core;

void time_add_op() {
  std::vector<int> sizes(1, 1);
  for (int i = 0; i < 9; ++i) {
    sizes.push_back(10 * sizes.back());
  }
  set_default_device(mx::Device::cpu);
  for (auto size : sizes) {
    auto a = mx::random::uniform({size});
    auto b = mx::random::uniform({size});
    mx::eval(a, b);
    std::cout << "Size " << size << std::endl;
    TIMEM("cpu", mx::add, a, b, mx::Device::cpu);
    TIMEM("gpu", mx::add, a, b, mx::Device::gpu);
  }
}

void TensorParallel() {
  int M = 1000, N = 100, K = 10;
  auto condition = mx::random::randint(0, 2, {M, N, K});
  auto a_up = mx::random::uniform({M / 2, K});
  auto a_down = mx::random::uniform({M / 2, K});
  auto b = mx::random::uniform({K});
  mx::eval(a_up, a_down, b);
  mx::matmul(a_up, b, mx::Device::cpu);
  mx::matmul(a_down, b, mx::Device::gpu);

  // mx::compile(a_up, a_down, b);

  auto a = mx::concatenate({a_up, a_down}, 0);
}

void time_tensor_parallel() {
  int M = 1000, N = 100, K = 10;
  auto condition = mx::random::randint(0, 2, {M, N, K});
  auto a_up = mx::random::uniform({M / 2, K});
  auto a_down = mx::random::uniform({M / 2, K});
  auto b = mx::random::uniform({K});
  auto c_up = mx::random::uniform({M / 2});
  auto c_down = mx::random::uniform({M / 2});
  mx::eval(a_up, a_down, b, c_up, c_down);

  auto tp_matmul = [&a_up, &a_down, &b]() { 
    return mx::concatenate({mx::matmul(a_up, b, mx::Device::cpu), mx::matmul(a_down, b, mx::Device::gpu)}, 0);
  };

  TIME(tp_matmul)

  TIMEM("cpu", mx::matmul, a_up, b, mx::Device::cpu);
  TIMEM("gpu", mx::matmul, a_down, b, mx::Device::gpu);
  // TIMEM("cpu", mx::concatenate, std::vector<mx::array>{c_up, c_down}, 0);
}

void time_gemv_op() {
  int M = 4096, N = 4096;
  auto a = mx::random::uniform({M, N});
  auto b = mx::random::uniform({N});
  auto c = mx::random::uniform({M});
  mx::eval(a, b, c);
  TIMEM("cpu", mx::matmul, a, b, mx::Device::cpu);
  TIMEM("gpu", mx::matmul, a, b, mx::Device::gpu);
}

int main() {
  time_add_op();
  time_gemv_op();
}
