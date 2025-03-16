# 修正后的CMakeLists.txt（关键修改第21行）
cmake_minimum_required(VERSION 3.23)
project(MetalSyncBench)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_library(METAL Metal REQUIRED)
find_library(FOUNDATION Foundation REQUIRED)

add_executable(metal_sync_bench
    main.cpp
    kernels.metal
)

include_directories(metal_sync_bench
    PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/metal-cpp
)

# add_include_directories(metal_sync_bench
#     PRIVATE
#     ${CMAKE_CURRENT_SOURCE_DIR}/metal-cpp
# )

target_link_libraries(metal_sync_bench
    ${METAL}
    ${FOUNDATION}
)

enable_testing()  # 修正拼写错误：enable_test → enable_testing
add_test(NAME SyncStrategies
    COMMAND $<TARGET_FILE:metal_sync_bench> -iter 1000
)
