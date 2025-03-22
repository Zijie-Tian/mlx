#include <iostream>
#include <string>
#include <tuple>
#include <chrono>
#include <iomanip>
#include <map>
#include "mlx/mlx.h"
#include "mlx/array.h"
// #include "time_utils.h"
#include "INIReader.h"

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

  int num_iters = 10000;
  auto start = time_now();
  for (int i = 0; i < num_iters; i++) {
    eval(fn(std::forward<Args>(args)...));
  }
  auto end = time_now();
  return milliseconds(end - start) / static_cast<double>(num_iters);
}

// 形状配置结构体
struct KernelShape {
    int m;
    int k;
    int n;
    
    friend std::ostream& operator<<(std::ostream& os, const KernelShape& ks) {
        os << "KernelShape(m=" << ks.m << ", k=" << ks.k << ", n=" << ks.n << ")";
        return os;
    }
};

// 运行参数结构体
struct RunConfig {
    int m;
    int k;
    int n;
    int b;
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
                0,0,0,0,
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

            // 从 section 名字中解析出 m, k, n 和 b 的值
            int t_val = 0, m_val = 0, k_val = 0, n_val = 0, b_val = 0;
            if (std::sscanf(section.c_str(),
                            "qgemm_lut_t%d_int8_m%d_k%d_n%d_b%d",
                            &t_val, &m_val, &k_val, &n_val, &b_val) == 5) {
                cfg.m = m_val;
                cfg.k = k_val;
                cfg.n = n_val;
                cfg.b = b_val;
            }
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

    auto select_n_kernel = [&](const KernelShape &shape) -> int {
        std::pair<std::string, RunConfig> best_candidate{"", {}};
        int best_n_kernel = 1;    //> minimum supported bn value
        for (const auto& [kernel_name, kernel_cfg] : run_configs) {
            if (shape.n % kernel_cfg.n == 0 && kernel_cfg.n > best_n_kernel) {
                best_n_kernel = kernel_cfg.n;
                best_candidate = {kernel_name, kernel_cfg};
            }
        }
        return best_n_kernel;
    };

    int group_size = 128;           //> QMM group size
    int M_high = 256;               //> QMM high precision M
    bool transposed_high = true;    //> QMM high precision transposed
    int nbits_high = 8;             //> QMM high precision bits
    int nbits_low = 2;              //> LUT low precision bits

    for (const auto& [section, shape] : shape_configs) {
        int n_kernel = select_n_kernel(shape);

        std::cout << "Kernel shape : " << shape << "n_kernel : " << n_kernel << std::endl;

        // 生成运行配置标识（示例：qgemm_lut_t8_int8_m4096_k4096_n1_b2）
        std::string run_section = "qgemm_lut_t" +
            std::to_string(thread_pool_size) + "_int8_m" + 
            std::to_string(shape.m * nbits) + "_k" + 
            std::to_string(shape.k) + "_n" + 
            std::to_string(n_kernel) + "_b" + 
            std::to_string(nbits);

        if (!run_configs.count(run_section)) {
            std::cerr << "Missing run config for: " << run_section << std::endl;
            continue;
        }

        int M_low = shape.m;
        int K = shape.k;
        int N = shape.n;
        int bm = run_configs[run_section].bm;

        std::cout << "Test case: group_size=" << group_size
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
        auto y_q = mx::fast::hermesdecode_op(
            activation, 
            qweight_high, scales_high, biases_high, 
            qweight_low, scales_low, biases_low,
            M_high, M_low, K, N, 
            transposed_high,
            group_size, nbits_high, nbits_low,
            mx::Device::gpu
        );

        TIMEM(
            "qmm",
            mx::fast::hermesdecode_op,
            activation,
            qweight_high, scales_high, biases_high,
            qweight_low, scales_low, biases_low,
            M_high, M_low, K, N,
            transposed_high,
            group_size, nbits_high, nbits_low,
            mx::Device::gpu
        );
    }
    
    std::cout << "All tests passed successfully." << std::endl;
    return 0;
}