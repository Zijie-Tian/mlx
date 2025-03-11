#pragma once

#define TMAC_USE_TVM_THREADPOOL


// 修改后（使用尖括号包含系统头文件）
#include <assert.h>
#include <chrono>
#include <cstdio>
#include <map>
#include <tuple>
#include <mutex>

// Inside defined INIReader.
#include <mlx/backend/cpu/tmac/INIReader.h>

namespace mlx::core {

constexpr size_t kAllocAlignment = 64;
using _fkey = std::tuple<int, int, int, int, int>;

struct TMACGeMMConfig;

struct TVMInternals; // Forward declaration

template <typename T, int g = 4>
class TMACGeMMWrapper {
public:
    TMACGeMMWrapper(int n_threads, int act_group_size, const std::string& kcfg_file, const std::string& library_file);

    TMACGeMMWrapper() : TMACGeMMWrapper(1, 32, "", "") {}

    // Hidden to cpp file
    TVMInternals* _tvm_internals;

    // workspace ptrs
    void* _qlut;
    void* _lut_scales;
    void* _lut_biases;
    bool _allocated;
    std::mutex _m;

    void set_num_threads(int n_threads);
    // void run(DLTensor* A, DLTensor* scales, DLTensor* B, DLTensor* C, int M, int K, int N, int bits);

    TMACGeMMConfig get_kcfg(int M, int K, int N, int bits);

    // Should only be called in main thread
    void set_workspace(int maxK, int maxN);

    ~TMACGeMMWrapper();

private:

    int _n_threads;
    int _act_group_size;

    INIReader _reader;

    std::string get_template_name(_fkey key);
};



} // namespace TMAC
