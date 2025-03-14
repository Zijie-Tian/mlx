# 定义一个函数来方便地编译单个源文件
function(build_executable SRCFILE)
  get_filename_component(src_name ${SRCFILE} NAME_WE)  # 获取文件名（不带扩展名）
  set(target "${src_name}")                            # 使用文件名作为目标名称
  add_executable(${target} ${SRCFILE})                 # 创建可执行文件
  target_link_libraries(${target} PRIVATE mlx)   # 链接库（如果有）
endfunction(build_executable)

# 调用函数来编译多个源文件
build_executable(test_compile.cpp)
build_executable(test_tmac_compile.cpp)