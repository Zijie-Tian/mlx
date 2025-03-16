if(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
  set(COMPILER ${CMAKE_C_COMPILER})
  set(CLANG TRUE)
else()
  set(COMPILER ${CMAKE_CXX_COMPILER})
endif()

set(COMPILE_DEPS
    ${PROJECT_SOURCE_DIR}/mlx/types/half_types.h
    ${PROJECT_SOURCE_DIR}/mlx/types/fp16.h
    ${PROJECT_SOURCE_DIR}/mlx/types/bf16.h
    ${PROJECT_SOURCE_DIR}/mlx/types/complex.h
    simd/simd.h
    simd/base_simd.h
    simd/math.h
    simd/type.h
    unary_ops.h
    binary_ops.h)

if(MSVC)
  set(SHELL_EXT ps1)
  set(SHELL_CMD powershell -ExecutionPolicy Bypass -File)
else()
  set(SHELL_EXT sh)
  set(SHELL_CMD bash)
endif()

#! ====================================================================================
include(CheckCXXCompilerFlag)

# if (CMAKE_OSX_ARCHITECTURES      STREQUAL "arm64" OR
#     CMAKE_GENERATOR_PLATFORM_LWR STREQUAL "arm64" OR
#     (NOT CMAKE_OSX_ARCHITECTURES      AND
#      NOT CMAKE_GENERATOR_PLATFORM_LWR AND
#          CMAKE_SYSTEM_PROCESSOR MATCHES "^(aarch64|arm.*|ARM64)$"))

#     message(STATUS "ARM detected")
#     message(STATUS "System processor: ${CMAKE_SYSTEM_PROCESSOR}")
#     message(STATUS "System name: ${CMAKE_SYSTEM_NAME}")

#     CHECK_CXX_COMPILER_FLAG(-mfp16-format=ieee COMPILER_SUPPORTS_FP16_FORMAT_I3E)
#     if (NOT "${COMPILER_SUPPORTS_FP16_FORMAT_I3E}" STREQUAL "")
#         list(APPEND ARCH_FLAGS -mfp16-format=ieee)
#     endif()
#     if (${CMAKE_SYSTEM_PROCESSOR} MATCHES "aarch64")
#         # We need fullfp16 for T-MAC
#         # TODO: we need to simplify this logic through check_cxx_source_compiles or Presets?
#         CHECK_CXX_SOURCE_COMPILES("#include <arm_neon.h>\nint main() { int8x16_t _a, _b; int32x4_t _s = vmlaq_f32(_s, _a, _b); return 0; }" GGML_COMPILER_SUPPORT_MATMUL_INT8)
#         if (GGML_COMPILER_SUPPORT_MATMUL_INT8)
#             # Device with armv8.7a+ cpu, e.g., WSL on Surface Laptop 7
#             # based on arm64-windows-llvm.cmake
#             list(APPEND ARCH_FLAGS -march=armv8.7-a+fp16 -fvectorize -ffp-model=fast -fno-finite-math-only)
#             add_compile_definitions(__ARM_FEATURE_MATMUL_INT8)
#         else ()
#             # Jetson AGX Orin, Raspberry Pi 5
#             message("Add arm + FP16 support.")
#             list(APPEND ARCH_FLAGS -march=armv8.2a+fp16)
#         endif ()
#     endif()
#     #> Zijie : Add Apple M4 Max support
#     if (${CMAKE_SYSTEM_PROCESSOR} MATCHES "arm64" AND "${CMAKE_SYSTEM_NAME}" STREQUAL "Darwin")
#         # Apple M2
#         list(APPEND ARCH_FLAGS -mcpu=apple-m2)
#     endif()

#     message(STATUS "Final arch flags: ${ARCH_FLAGS}")

#     set_source_files_properties(
#         ${CMAKE_CURRENT_SOURCE_DIR}/tmac/kernels.cc
#         PROPERTIES COMPILE_OPTIONS "-mcpu=apple-m2"
#     )

# endif()

# set_source_files_properties(
#   ${CMAKE_CURRENT_SOURCE_DIR}/tmac/kernels.cc
#   PROPERTIES COMPILE_OPTIONS "-mcpu=apple-m2"
# )

# target_include_directories(
#     mlx PRIVATE 
#     ${CMAKE_CURRENT_SOURCE_DIR}  # 使用SOURCE_DIR代替LIST_DIR
# )

set(TVM_HOME "/Users/tianzijie/Baselines/ao/third_party/tvm/")

# 将dmlc-core头文件标记为系统头文件
# target_include_directories(mlx SYSTEM PRIVATE
#     ${TVM_HOME}/3rdparty/dmlc-core/include/
#     ${TVM_HOME}/3rdparty/dlpack/include/
#     ${TVM_HOME}/include  # 新增TVM主头文件目录
# )

#! ====================================================================================

add_custom_command(
  OUTPUT compiled_preamble.cpp
  COMMAND
    ${SHELL_CMD} ${CMAKE_CURRENT_SOURCE_DIR}/make_compiled_preamble.${SHELL_EXT}
    ${CMAKE_CURRENT_BINARY_DIR}/compiled_preamble.cpp ${COMPILER}
    ${PROJECT_SOURCE_DIR} ${CLANG} ${CMAKE_SYSTEM_PROCESSOR}
  DEPENDS make_compiled_preamble.${SHELL_EXT} compiled_preamble.h
          ${COMPILE_DEPS})

add_custom_target(cpu_compiled_preamble DEPENDS compiled_preamble.cpp)

add_dependencies(mlx cpu_compiled_preamble)

target_sources(
  mlx
  PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/arg_reduce.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/binary.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/conv.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/copy.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/eigh.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/fft.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/hadamard.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/matmul.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/gemms/cblas.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/masked_mm.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/primitives.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/quantized.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/reduce.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/scan.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/select.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/softmax.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/sort.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/threefry.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/indexing.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/luf.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/qrf.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/svd.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/inverse.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/cholesky.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/unary.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/tmac_gemv.cpp
          ${CMAKE_CURRENT_SOURCE_DIR}/embedding.cpp
          ${CMAKE_CURRENT_BINARY_DIR}/compiled_preamble.cpp)

set(MLX_BUILD_TMAC TRUE)
if(MLX_BUILD_TMAC)
  target_sources(mlx PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/tmac/kernels.cc)
endif()

if(MLX_BUILD_ACCELERATE)
  target_sources(mlx PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/gemms/bnns.cpp)
else()
  target_sources(mlx PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/gemms/no_fp16.cpp
                             ${CMAKE_CURRENT_SOURCE_DIR}/gemms/no_bf16.cpp)
endif()

if(IOS)
  target_sources(mlx PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../no_cpu/compiled.cpp)
else()
  target_sources(mlx PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/compiled.cpp
                             ${CMAKE_CURRENT_SOURCE_DIR}/jit_compiler.cpp)
endif()
