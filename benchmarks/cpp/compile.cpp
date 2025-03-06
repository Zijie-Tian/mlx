// Copyright © 2023 Apple Inc.

#include <iostream>
#include "mlx/mlx.h"
#include "time_utils.h"

namespace mx = mlx::core;

int main() {
    // 构造计算图（在lambda内部定义）
    auto compute_graph = [](const std::vector<mx::array>& inputs) {
        mx::array a_up = inputs[0];
        mx::array a_down = inputs[1];
        mx::array b = inputs[2];

        mx::array c_up = mx::matmul(a_up, b, mx::Device::cpu);
        mx::array c_down = mx::matmul(a_down, b, mx::Device::gpu);
        mx::array c = mx::concatenate({c_up, c_down}, 0);

        return std::vector<mx::array>{c};
    };

    // 创建输入数据
    int M = 4096;
    int K = 4096;
    int N = 1;
    mx::array a_up = mx::random::uniform({M / 2, K});
    mx::array a_down = mx::random::uniform({M / 2, K});
    mx::array b = mx::random::uniform({K, N});
    std::vector<mx::array> inputs = {a_up, a_down, b};

    mx::array a = mx::concatenate({a_up, a_down}, 0);
    mx::array c = mx::matmul(a, b);
    // 编译计算图
    auto compiled_fn = mx::compile(compute_graph);

    TIMEM("matmul_cpu", mx::matmul, a, b, mx::Device::cpu);
    TIMEM("matmul_gpu", mx::matmul, a, b, mx::Device::gpu);
    
    // 执行编译后的函数
    auto compiled_result = compiled_fn(inputs)[0];
    // std::cout << "Reference result:\n" << c << std::endl;
    // std::cout << "Compiled result:\n" << compiled_result << std::endl;
    // 将vector转换为可输出的字符串格式
    std::stringstream ss;
    ss << "[";
    for (size_t i = 0; i < compiled_result.shape().size(); ++i) {
        ss << compiled_result.shape()[i];
        if (i != compiled_result.shape().size() - 1) {
            ss << ", ";
        }
    }
    ss << "]";
    std::cout << "Compiled result shape: " << ss.str() << std::endl;

    // 性能测试（需要调整TIME宏调用方式）
    TIMEM("compile", compiled_fn, inputs);

    return 0;
}
