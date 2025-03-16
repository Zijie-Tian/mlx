#pragma once

// 修改后（使用尖括号包含系统头文件）
#include <assert.h>
#include <chrono>
#include <cstdio>
#include <map>
#include <tuple>
#include <mutex>

// Inside defined INIReader.
#include <mlx/backend/cpu/t_mac/INIReader.h>

namespace mlx::core {

constexpr size_t kAllocAlignment = 64;
using _fkey = std::tuple<int, int, int, int, int>;

struct TMACGeMMConfig;

struct TVMInternals; // Forward declaration

} // namespace TMAC
