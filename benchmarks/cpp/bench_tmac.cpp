// Copyright © 2023 Apple Inc.

#include <iostream>
#include "mlx/mlx.h"
#include "time_utils.h"

namespace mx = mlx::core;

int main() {
    // 创建输入数据
    int M = 4096;
    int K = 4096;
    int N = 1;
    mx::array a_up = mx::random::uniform({M / 2, K});
    mx::array a_down = mx::random::uniform({M / 4, K});
    mx::array b = mx::random::uniform({K, N});

    mx::array output = mx::tmac_gemv(
        b,
        a_up,
        a_down,
        M, K, N,
        128, 16, 2,
        mx::Device::cpu
    );

    std::cout << a_up;
    std::cout << "Output : " << output << std::endl;

    return 0;
}