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
    
    // define an MLP-like lambda that builds a tree-structured computation graph
    auto mlp = [&]() {
        // recursive lambda: processes a segment of weights on input tensor "in"
        auto mlp_tree = [&](auto self, decltype(x) in, int start, int end, mx::NodeNamer& namer) -> decltype(x) {
            if (start >= end) {
                return in;
            }
            // if there's a single weight, perform matmul directly
            if (start + 1 == end) {
                auto ret = mx::matmul(in, weights[start],
                                  (start % 2 == 0) ? mx::Device::gpu : mx::Device::cpu);
                namer.set_name(ret, "Matmul_" + std::to_string(start) + std::string((start % 2 == 0) ? "_GPU" : "_CPU"));
                return ret;
            }
            // split the weights segment into two halves
            int mid = (start + end) / 2;
            auto left = self(self, in, start, mid, namer);
            auto right = self(self, in, mid, end, namer);
            // combine the two branches; this creates a tree-like graph
            auto ret = mx::add(left, right, mx::Device::gpu);
            namer.set_name(ret, "Add_" + std::to_string(start) + "_" + std::to_string(mid) + "_" + std::to_string(end));
            return ret;
        };
        // build a tree using all weight matrices
        return mlp_tree(mlp_tree, x, 0, weights.size(), namer);
    };

    auto out = mlp();
    std::ofstream out_file("output.dot");
    export_to_dot(out_file, namer, out);
    out_file.close();
    
    TIME(mlp);
    
    return 0;
}



