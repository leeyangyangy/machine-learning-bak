# 项目名称，避免写死
set(PROJECT_NAME opencv-learn)
project(${PROJECT_NAME})

# 设置 C++ 标准和其它 Qt 依赖
set(CMAKE_CXX_STANDARD 17)

# 查看完整编译命令
set(CMAKE_VERBOSE_MAKEFILE ON)

# 子项目
add_subdirectory(day01-Vec)
