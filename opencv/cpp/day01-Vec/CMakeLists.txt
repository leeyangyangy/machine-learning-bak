cmake_minimum_required(VERSION 3.20)

# 动态设置子项目名
get_filename_component(PROJECT_NAME ${CMAKE_CURRENT_SOURCE_DIR} NAME)
project(${PROJECT_NAME})

# 设置默认构建类型为 Debug
if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Debug)
endif()

# 设置调试标志
if (CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang")
    set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -g")
elseif (MSVC)
    set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} /Zi")
    if (CMAKE_BUILD_TYPE MATCHES "Debug")
        set(DEBUG_SUFFIX "d")
    endif()
endif()

# 配置 OpenCV
set(OpenCV_DIR D:/env/opencv/OpenCV-MinGW-Build-OpenCV-4.5.2-x64)
find_package(OpenCV 4.5.2 REQUIRED COMPONENTS core imgproc highgui imgcodecs flann calib3d features2d videoio highgui ml objdetect stitching)
include_directories(${OpenCV_INCLUDE_DIRS})

# 添加可执行文件并链接 OpenCV
add_executable(${PROJECT_NAME} day01-Vec.cpp)
target_link_libraries(${PROJECT_NAME} PRIVATE ${OpenCV_LIBS})