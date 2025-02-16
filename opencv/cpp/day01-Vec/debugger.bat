@echo off
echo === Building the project ===

:: 设置变量
set CMAKE_C_COMPILER=D:\env\minGW\mingw64\bin\gcc.exe
set CMAKE_CXX_COMPILER=D:\env\minGW\mingw64\bin\g++.exe
set BUILD_DIR=build
set TARGET_EXE=xxx.exe

:: 创建构建目录（如果不存在）
if not exist "%BUILD_DIR%" mkdir "%BUILD_DIR%"

:: 调用 CMake 配置和构建
cmake -DCMAKE_BUILD_TYPE=Debug -G "MinGW Makefiles" -B %BUILD_DIR% -DCMAKE_C_COMPILER=%CMAKE_C_COMPILER% -DCMAKE_CXX_COMPILER=%CMAKE_CXX_COMPILER%
if %ERRORLEVEL% neq 0 (
    echo CMake configuration failed!
    exit /b %ERRORLEVEL%
)

cmake --build %BUILD_DIR% --config Debug --verbose
if %ERRORLEVEL% neq 0 (
    echo Build failed!
    exit /b %ERRORLEVEL%
)

echo === Build completed successfully ===

:: 启动 GDB 调试器
set GDB_PATH=D:\env\minGW\mingw64\bin\gdb.exe
if exist "%GDB_PATH%" (
    echo === Starting GDB debugger ===
    "%GDB_PATH%" %BUILD_DIR%\%TARGET_EXE%
    echo === GDB session ended ===
) else (
    echo GDB not found at "%GDB_PATH%"
)

pause