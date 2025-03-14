cmake_minimum_required(VERSION 3.12)
project(embedding_benchmark CXX)

# 开启C++17标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 开启硬件优化
# add_compile_options(-march=native -O3 -ffast-math)

# 检查并开启OpenMP
if(APPLE)
    message(STATUS "Skipping OpenMP on macOS")
else()
    find_package(OpenMP REQUIRED)
    if(OpenMP_CXX_FOUND)
        add_compile_options(${OpenMP_CXX_FLAGS})
        link_libraries(OpenMP::OpenMP_CXX)
    endif()
endif()

# 定义可执行文件
add_executable(embedding_bench 
    embedding.cpp
    main.cpp
)

# 内存对齐分配检查
if(UNIX)
    target_link_libraries(embedding_bench "m")
endif()