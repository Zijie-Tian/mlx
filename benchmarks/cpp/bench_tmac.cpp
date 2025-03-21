#include <iostream>
#include <string>
#include <tuple>
#include <map>
#include "mlx/mlx.h"
#include "mlx/array.h"
#include "time_utils.h"
#include "INIReader.h"

namespace mx = mlx::core;

// 形状配置结构体
struct KernelShape {
    int m;
    int k;
    int n;
};

// 运行参数结构体
struct RunConfig {
    int bm;
    int bn;
    int simd_n_in;
    int simd_n_out;
    int kfactor;
    int group_size;
    int lut_scales_size;
    int scales_size;
    int n_tile_num;
};

// 生成配置唯一标识
std::string generate_config_key(int m, int k, int n, int bits) {
    return std::to_string(m) + "_" + 
           std::to_string(k) + "_" + 
           std::to_string(n) + "_" + 
           std::to_string(bits);
}

// 解析形状配置
std::map<std::string, KernelShape> load_shape_config(const std::string& path) {
    INIReader reader(path);
    std::map<std::string, KernelShape> shapes;
    
    if (reader.ParseError() != 0) {
        std::cerr << "Error loading shape config: " << path << std::endl;
        return shapes;
    }

    for (const auto& section : reader.Sections()) {
        if (section.find("kernel_") == 0) {
            KernelShape shape{
                (int) reader.GetInteger(section, "m", 0),
                (int) reader.GetInteger(section, "k", 0),
                (int) reader.GetInteger(section, "n", 0)
            };
            if (shape.m > 0 && shape.k > 0 && shape.n > 0) {
                shapes[section] = shape;
            }
        }
    }
    return shapes;
}

// 解析运行配置
std::map<std::string, RunConfig> load_run_config(const std::string& path) {
    INIReader reader(path);
    std::map<std::string, RunConfig> configs;

    if (reader.ParseError() != 0) {
        std::cerr << "Error loading run config: " << path << std::endl;
        return configs;
    }

    for (const auto& section : reader.Sections()) {
        if (section.find("qgemm_") == 0) {
            RunConfig cfg{
                (int) reader.GetInteger(section, "bm", 256),
                (int) reader.GetInteger(section, "bn", 32),
                (int) reader.GetInteger(section, "simd_n_in", 16),
                (int) reader.GetInteger(section, "simd_n_out", 8),
                (int) reader.GetInteger(section, "kfactor", 16),
                (int) reader.GetInteger(section, "group_size", 128),
                (int) reader.GetInteger(section, "lut_scales_size", 16384),
                (int) reader.GetInteger(section, "scales_size", 1),
                (int) reader.GetInteger(section, "n_tile_num", 16)
            };
            configs[section] = cfg;
        }
    }
    return configs;
}

int main() {
    // 固定参数
#ifdef THREAD_POOL_SIZE
    const int thread_pool_size = THREAD_POOL_SIZE; // 线程池大小
#else
    const int thread_pool_size = 8; // 默认线程池大小
#endif

    const int nbits = 2; 
    const int g = 4;

    // 加载配置
    auto shape_configs = load_shape_config("/Users/tianzijie/Code/mlx/tools/preset_kernels.ini");
    auto run_configs = load_run_config("/Users/tianzijie/Code/mlx/mlx/backend/cpu/tmac/kcfg.ini");

    for (const auto& [section, shape] : shape_configs) {
        // 生成运行配置标识（示例：qgemm_lut_t8_int8_m4096_k4096_n1_b2）
        std::string run_section = "qgemm_lut_t" +
            std::to_string(thread_pool_size) + "_int8_m" + 
            std::to_string(shape.m * nbits) + "_k" + 
            std::to_string(shape.k) + "_n" + 
            std::to_string(shape.n) + "_b" + 
            std::to_string(nbits);

        if (!run_configs.count(run_section)) {
            std::cerr << "Missing run config for: " << run_section << std::endl;
            continue;
        }

        const auto& run_cfg = run_configs[run_section];

        // 张量初始化
        int ngroups_per_elem = 8 / g;
        mx::array A_t = mx::random::randint(0, 255, 
            {shape.m * nbits / run_cfg.bm, 
             shape.k / g, 
             run_cfg.bm / ngroups_per_elem}, mx::uint8);
        
        mx::array Scales_t = mx::random::uniform(
            {shape.m * nbits / run_cfg.bm,
             shape.k / run_cfg.group_size,
             run_cfg.bm / nbits}, mx::float16);

        mx::array activation = mx::random::uniform(
            {shape.n, shape.k}, mx::float16);

        // 同步计算
        A_t.eval();
        Scales_t.eval();
        activation.eval();

        // 打印配置信息
        std::cout << "\n=== Kernel Shape ==="
                  << "\nSection: " << section
                  << "\nM: " << shape.m
                  << "\nK: " << shape.k
                  << "\nN: " << shape.n
                  << "\n=== Runtime Params ==="
                  << "\nbm: " << run_cfg.bm
                  << "\nbn: " << run_cfg.bn
                  << "\nkfactor: " << run_cfg.kfactor 
                  << std::endl;

        // 执行基准测试
        TIMEM(
            "tmac-gemv",
            mx::tmac_gemv,
            activation,
            A_t,
            Scales_t,
            shape.m, shape.k, shape.n, nbits,
            mx::Device::cpu
        );
    }

    return 0;
}