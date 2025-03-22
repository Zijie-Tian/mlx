function(build_tvm_benchmark SRCFILE)
  get_filename_component(src_name ${SRCFILE} NAME_WE)
  set(target "${src_name}")
  add_executable(${target} ${SRCFILE})
  target_link_libraries(${target} PRIVATE mlx)
  
  # According to the actual installation path configuration
  set(TVM_HOME "/Users/tianzijie/Baselines/ao/third_party/tvm/")
  set(TVM_INCLUDE_DIR "/usr/local/include")
  set(TVM_RUNTIME_LIB "/usr/local/lib/libtvm_runtime.dylib")
  
  # Fix the include directory
  target_include_directories(${target} PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/include/
    ${TVM_INCLUDE_DIR}
    ${TVM_INCLUDE_DIR}/tvm/runtime/crt
    ${TVM_HOME}/include/
    ${TVM_HOME}/3rdparty/dmlc-core/include/
    ${TVM_HOME}/3rdparty/dlpack/include/
  )
  
  # Directly link the runtime library
  target_link_directories(${target} PRIVATE /usr/local/lib)
  target_link_libraries(${target} PRIVATE ${TVM_RUNTIME_LIB})
  
  # Remove the find_package call

  # Set the build type to Debug
  set_target_properties(${target} PROPERTIES
    CONFIGURATION_TYPES "Debug"
    CMAKE_BUILD_TYPE Debug
  )
endfunction(build_tvm_benchmark)

function(build_benchmark SRCFILE)
  get_filename_component(src_name ${SRCFILE} NAME_WE)
  set(target "${src_name}")
  add_executable(${target} ${SRCFILE})
  target_link_libraries(${target} PRIVATE mlx)
endfunction(build_benchmark)

#! MLX benchmarks
build_benchmark(single_ops.cpp)
build_benchmark(irregular_strides.cpp)
build_benchmark(compare_devices.cpp)
build_benchmark(autograd.cpp)
build_benchmark(bench_hermes.cpp)
build_benchmark(bench_hermes_decode.cpp)
build_benchmark(capture_hermes.cpp)
build_benchmark(bench_tmac.cpp)
build_benchmark(bench_tree.cpp)
build_benchmark(bench_seq.cpp)
build_benchmark(bench_qmm.cpp)
build_benchmark(bench_decode.cpp)
build_benchmark(bench_prefill.cpp)

#! TVM benchmarks
build_tvm_benchmark(bench_tvm.cpp)
