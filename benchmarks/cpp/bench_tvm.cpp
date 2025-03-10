#include <tvm/runtime/module.h>
#include <tvm/runtime/packed_func.h>
#include <tvm/runtime/registry.h>
#include <iostream>
#include <random>
#include <vector>

int main() {
    // Load the module
    tvm::runtime::Module mod = tvm::runtime::Module::LoadFromFile("./myadd.so");
    if (!mod.defined()) {
        std::cerr << "Failed to load module!" << std::endl;
        return -1;
    }

    // Get the CPU context
    tvm::Device ctx = {kDLCPU, 0};

    // Define the size of the arrays
    int n = 10;

    // Initialize random number generator
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_real_distribution<> dis(0.0, 1.0);

    // Create input arrays
    std::vector<float> a_data(n);
    std::vector<float> b_data(n);
    std::vector<float> c_data(n, 0.0);

    for (int i = 0; i < n; ++i) {
        a_data[i] = static_cast<float>(dis(gen));
        b_data[i] = static_cast<float>(dis(gen));
    }

    // Create TVM NDArrays
    tvm::runtime::NDArray a = tvm::runtime::NDArray::Empty({n}, {kDLFloat, 32, 1}, ctx);
    tvm::runtime::NDArray b = tvm::runtime::NDArray::Empty({n}, {kDLFloat, 32, 1}, ctx);
    tvm::runtime::NDArray c = tvm::runtime::NDArray::Empty({n}, {kDLFloat, 32, 1}, ctx);

    // Copy data to TVM NDArrays
    a.CopyFromBytes(a_data.data(), n * sizeof(float));
    b.CopyFromBytes(b_data.data(), n * sizeof(float));

    // Get the packed function
    tvm::runtime::PackedFunc fadd1 = mod.GetFunction("myadd");

    // Call the function
    fadd1(a, b, c);

    // Copy the result back to the host
    c.CopyToBytes(c_data.data(), n * sizeof(float));

    // Print the result
    for (int i = 0; i < n; ++i) {
        std::cout << c_data[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}
