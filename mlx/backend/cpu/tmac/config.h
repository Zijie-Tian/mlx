#include <unordered_map>
#include <tuple>

namespace mlx::core {

struct QGemmConfig {
    int bm;
    int group_size;
    int lut_scales_size;
    int scales_size;
    int n_tile_num;
};

// Hard-coded lookup table
std::unordered_map<std::tuple<int, int, int, int>, QGemmConfig> configLookup = {
    //                    bm    group_size  lut_scales_size scales_size n_tile_num
    {{3200, 8640, 1, 2}, {256,      128,        135,        1,              25}},
    {{8640, 3200, 1, 2}, {128,      128,        50,         1,              135}},
    {{3200, 3200, 1, 2}, {128,      128,        50,         1,              50}}
};

QGemmConfig getConfig(int M, int K, int N, int nbits) {
    auto key = std::make_tuple(M, K, N, nbits);
    auto it = configLookup.find(key);
    if (it != configLookup.end()) {
        return it->second;
    }
    // Return a default configuration if not found
    //> This Configuration is not valid, will raise an error in the kernel
    return {-1, 0, 0, 0, 0, 0, 0, 0};
}

} // namespace mlx::core
