// Copyright © 2023 Apple Inc.

#include <fstream>

#include "mlx/mlx.h"
#include "mlx/graph_utils.h"
#include "time_utils.h"

namespace mx = mlx::core;

int main() {
    mx::NodeNamer namer;

    // dimensions: batch size and hidden layer size
    int batch = 1, hidden = 3200, layers = 9;
    
    // create an input matrix: each row is an example
    auto x = mx::random::uniform({batch, hidden});
    
    // create a number of weight matrices for each layer (without bias)
    std::vector<decltype(x)> weights;
    for (int i = 0; i < layers; i++) {
        weights.push_back(mx::random::uniform({hidden, hidden}));
    }
    
    // ensure tensors are ready
    mx::eval(x);
    for (auto &w : weights) {
        mx::eval(w);
    }
    
    // define an MLP-like lambda that builds a left-leaning (linear) computation graph
    auto mlp = [&]() {
        // start with the result of the first matmul
        auto out = mx::matmul(x, weights[0],
                              (0 % 2 == 0) ? mx::Device::gpu : mx::Device::cpu);
        namer.set_name(out, "Matmul_0" + std::string("_GPU"));
        // iterate over the remaining weight matrices, accumulating the result in a left-leaning fashion
        for (size_t i = 1; i < weights.size(); i++) {
            auto tmp = mx::matmul(x, weights[i],
                                  (i % 2 == 0) ? mx::Device::gpu : mx::Device::cpu);
            namer.set_name(tmp, "Matmul_" + std::to_string(i) + ((i % 2 == 0) ? "_GPU" : "_CPU"));
            out = mx::add(out, tmp, mx::Device::gpu);
            namer.set_name(out, "Add_" + std::to_string(i));
        }
        return out;
    };

    auto out = mlp();
    std::ofstream out_file("output.dot");
    export_to_dot(out_file, namer, out);
    out_file.close();
    
    TIME(mlp);
    
    return 0;
}



