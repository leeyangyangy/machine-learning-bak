# 仓库介绍
机器学习记录，使用`c++`和`python`实现

## c++实现：
### 环境：

```bash
# 构建工具  -->     cmake
# 编译器 	 --> 	 mingw??_64
# 开发编辑器 -->		visual studio code
# opencv 4.5.2x64
# 构建方式，进入cpp目录中，先执行如下命令
cmake -DCMAKE_BUILD_TYPE=Debug -G "MinGW Makefiles" ..
# 然后cd到子项目中的build，执行如下命令
cmake --build . --config Debug
# cmake -DCMAKE_BUILD_TYPE=Debug -G "MinGW Makefiles" -B build && cmake --build build --config Debug
# cmake -DCMAKE_BUILD_TYPE=Debug -G "MinGW Makefiles" -B build -DCMAKE_C_COMPILER=D:\\env\\minGW\\mingw64\\bin\\gcc -DCMAKE_CXX_COMPILER=D:\\env\\minGW\\mingw64\\bin\\g++ && cmake --build build --config Debug --verbose
# debugger --> D:/env/minGW/mingw64/bin/gdb.exe .\build\xxx.exe
```



## python实现：

### 环境：

```bash
# 解释器 -->	python3.8+
# 开发编辑器 -->	visual studio code / Jupyter 
# opencv 4.5+
```



暂无……
