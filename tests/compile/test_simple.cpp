// Copyright © 2023 Apple Inc.

#include <cstring>
#include <iostream>
#include "mlx/mlx.h"
#include "mlx/array.h"
#include "mlx/backend/cpu/copy.h"
#include "mlx/backend/cpu/gemm.h"
#include "mlx/primitives.h"
#include "mlx/ops.h"
#include "time_utils.h"

namespace mx = mlx::core;

std::vector<mx::array> simple_fun(const std::vector<mx::array>& inputs) {
    return std::vector<mx::array>{abs(negative(exp(inputs[0] + inputs[1])))};
}

int main() {
    mx::set_default_stream(mx::new_stream(mx::Device::cpu));
    auto normal_out = simple_fun({mx::array(1.0f), mx::array(2.0f)})[0];
    std::cout << normal_out.item<float>() << std::endl;

    auto compfn = compile(simple_fun);
    auto out = compfn({mx::array(1.0f), mx::array(2.0f)})[0];
    std::cout << out.item<float>() << std::endl;
    return 0;
}

