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

int main() {
    // 创建输入数据
    int M = 8640 * 2;
    int K = 3200;
    int N = 1;

    // TMAC Paramter
    int nbits = 2;
    int bm = 128;
    int g = 4;
    int group_size = 128;
    int act_group_size = 64;
    int kfactor = 16;
    int n_threads = 12;

    // 构造计算图（在lambda内部定义）
    auto compute_graph = [](const std::vector<mx::array>& inputs) {
        mx::array a_up = inputs[0];
        mx::array a_down_t = inputs[1];
        mx::array a_down_scales_t = inputs[2];
        mx::array b = inputs[3];
        mx::array QLUT = inputs[4];
        mx::array LUT_Scales = inputs[5];
        mx::array LUT_Biases = inputs[6];

        // 创建输入数据
        int M = 6400;
        int K = 3200;
        int N = 1;
        int M_down = M / 2;

        // TMAC Paramter
        int nbits = 2;
        int bm = 128;
        int g = 4;
        int group_size = 128;
        int act_group_size = 64;
        int kfactor = 16;
        int n_threads = 12;

        mx::array c_up = mx::matmul(a_up, b, mx::Device::gpu);
        mx::array c_down = mx::tmac_gemv(
            a_down_t, a_down_scales_t, b,
            QLUT, LUT_Scales, LUT_Biases,
            M_down, K, N,
            group_size, 
            act_group_size,
            kfactor, g, bm, nbits,
            n_threads,
            mx::Device::cpu
        );
        c_down = mx::transpose(c_down, {1, 0});
        mx::array c = mx::concatenate({c_up, c_down}, 0);

        return std::vector<mx::array>{c};
    };

    mx::array a_up = mx::random::uniform({1024, K});
    // mx::array a_down = mx::random::uniform({M / 2, K});

    int M_down = 8640;

    int ngroups_per_elem = 8 / g;
    mx::array a_down_t = mx::random::randint(0, 255, {M_down / bm, K / g, bm / ngroups_per_elem}, mx::uint8);
    mx::array a_down_scales_t = mx::random::uniform({M_down / bm, K / group_size, bm / nbits}, mx::float16);
    mx::array b = mx::random::uniform({K, N}, mx::float16);
    mx::array QLUT = mx::zeros({N, K / g, 1 << g}, mx::uint8);
    mx::array LUT_Scales = mx::zeros({N, K / act_group_size}, mx::float16);
    mx::array LUT_Biases = mx::zeros({N, K / act_group_size}, mx::float16);
    a_up.eval();
    a_down_t.eval();
    a_down_scales_t.eval();
    b.eval();
    QLUT.eval();
    LUT_Scales.eval();
    LUT_Biases.eval();

    mx::array c_up = mx::matmul(a_up, b, mx::Device::gpu);
    c_up.eval();
    std::cout << c_up << std::endl;

    //> Just Hack.
    mx::array a_up_sub = mx::random::uniform({M / 8, K});
    std::vector<mx::array> inputs = {a_up, a_down_t, a_down_scales_t, b, QLUT, LUT_Scales, LUT_Biases};

    // mx::array a = mx::concatenate({a_up, a_down}, 0);
    // mx::array c = mx::matmul(a, b);
    // 编译计算图
    auto compiled_fn = mx::compile(compute_graph);

    // TIMEM("matmul_cpu", mx::matmul, a, b, mx::Device::cpu);
    // TIMEM("matmul_gpu", mx::matmul, a, b, mx::Device::gpu);

    // TIMEM("matmul_cpu_up", mx::matmul, a_up_sub, b, mx::Device::cpu)
    // TIMEM("matmul_gpu_down", mx::matmul, a_down, b, mx::Device::gpu)
    
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
    // TODO : Fix Segmentation Fault Error when calling TIME.
    TIMEM("compile", compiled_fn, inputs);
    auto start_time = time_now();
    for (int i = 0; i < 1000; ++i) {
        compiled_result = compiled_fn(inputs)[0];
        // eval(compiled_result);
    }
    auto end_time = time_now();
    auto elapsed_time = end_time - start_time;
    std::cout << "Elapsed time: " << elapsed_time.count() / 1000.0 << " ms" << std::endl;

    return 0;
}
