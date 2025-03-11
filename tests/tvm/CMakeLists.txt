cmake_minimum_required(VERSION 3.12)
project(TvmBenchmark LANGUAGES CXX)

# 设置编译选项
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# TVM运行时配置
set(TVM_RUNTIME_LIB "/usr/local/lib/libtvm_runtime.dylib")
set(TVM_INCLUDE_DIR "/usr/local/include")

# According to the actual installation path configuration
set(TVM_HOME "/Users/tianzijie/Baselines/ao/third_party/tvm/")
set(TVM_INCLUDE_DIR "/usr/local/include")
set(TVM_RUNTIME_LIB "/usr/local/lib/libtvm_runtime.dylib")


# 添加可执行文件
add_executable(test_tvm test_tvm.cpp)

# Fix the include directory
target_include_directories(test_tvm PRIVATE
  ${CMAKE_CURRENT_SOURCE_DIR}/
  ${TVM_INCLUDE_DIR}
  ${TVM_INCLUDE_DIR}/tvm/runtime/crt
  ${TVM_HOME}/include/
  ${TVM_HOME}/3rdparty/dmlc-core/include/
  ${TVM_HOME}/3rdparty/dlpack/include/
)

# 链接配置
target_link_directories(test_tvm PRIVATE /usr/local/lib)
target_link_libraries(test_tvm PRIVATE
    ${TVM_RUNTIME_LIB}
)

