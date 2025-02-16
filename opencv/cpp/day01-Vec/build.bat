@echo off
echo === Building the project ===

:: 设置变量
set CMAKE_C_COMPILER=D:\env\minGW\mingw64\bin\gcc.exe
set CMAKE_CXX_COMPILER=D:\env\minGW\mingw64\bin\g++.exe
set BUILD_DIR=build

:: 创建构建目录（如果不存在）
if not exist "%BUILD_DIR%" mkdir "%BUILD_DIR%"

:: 调用 CMake 配置和构建
cmake -DCMAKE_BUILD_TYPE=Debug -G "MinGW Makefiles" -B %BUILD_DIR% -DCMAKE_C_COMPILER=%CMAKE_C_COMPILER% -DCMAKE_CXX_COMPILER=%CMAKE_CXX_COMPILER%

cmake --build %BUILD_DIR% --config Debug --verbose
