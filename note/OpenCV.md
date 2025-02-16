# OpenCV学习

学习书籍 -- `OpenCV 4机器学习算法原理与编程实战`、`计算机视觉40例从入门到深度学习(OpenCV-Python)`、`机器学习实战`

## 1. opencv数据类型

### 1.1 基本数据类型

同c++ int，float……

### 1.2 助手对象

抽象概念，如垃圾收集指针类、切片的范围对象、某些算法终止条件的抽象……

### 1.3 大型数组类型

代表类型 `cv::Mat` 类，用于表示任意基本类型的任意维度的数组。

## 2. OpenCV类
### 2.1 cv::Vec

cv::Vec 可用来表示`固定长度的向量`，又称`固定向量类`；主要用来存储数值向量；`cv::Matx`可以用来处理`固定大小`的`小维度矩阵`运算。该类在编译时候需要知道变量长度

```c++
// .h
#include <opencv2/opencv.hpp>

typedef cv::Vec<uchar, 2> Vec2b;
typedef cv::Vec<uchar, 3> Vec3b;
typedef cv::Vec<uchar, 4> Vec4b;

typedef cv::Vec<short, 2> Vec2s;
typedef cv::Vec<short, 3> Vec3s;
typedef cv::Vec<short, 4> Vec4s;

typedef cv::Vec<int, 2> Vec2i;
typedef cv::Vec<int, 3> Vec3i;
typedef cv::Vec<int, 4> Vec4i;

typedef cv::Vec<float, 2> Vec2f;
typedef cv::Vec<float, 3> Vec3f;
typedef cv::Vec<float, 4> Vec4f;
typedef cv::Vec<float, 6> Vec6f;

typedef cv::Vec<double, 2> Vec2d;
typedef cv::Vec<double, 3> Vec3d;
typedef cv::Vec<double, 4> Vec4d;
typedef cv::Vec<double, 6> Vec6d;

// .cpp
#include "day01-Vec.h"
#include <iostream>

using namespace std;

int main(int argc, const char **argv)
{
    // 初始化
    cv::Vec<int, 3> myVec; // 3个元素的向量
    for (int i = 0; i < 3; i++)
        myVec[i] = i;

    cv::Vec3i v3i(0, 1, 2);
    cv::Vec2d v2d(1.2, 2.4);
    cv::Vec2d v2d_1(v2d);

    // 访问下标 myVec是一个 3 行 1 列的 int 型 cv::Matx类。cv::Matx 类是 cv::Vec 类的基类。
    cout << "myVec[0] = " << myVec[0] << endl;
    cout << "myVec[1] = " << myVec[1] << endl;
    cout << "myVec[2] = " << myVec[2] << endl;

    cout << "v3i[0] = " << v3i[0] << endl;
    cout << "v3i[1] = " << v3i[1] << endl;
    cout << "v3i[2] = " << v3i[2] << endl;

    cout << "v2d[0] = " << v2d[0] << endl;
    cout << "v2d[1] = " << v2d[1] << endl;

    cout << "v2d_1[0] = " << v2d_1[0] << endl;
    cout << "v2d_1[1] = " << v2d_1[1] << endl;

    // 计算
    cv::Vec3i v1(1, 0, 0);
    cv::Vec3i v2(1, 1, 0);
    cv::Vec3i v3;

    cout << "v1 = " << v1 << endl;
    cout << "v2 = " << v2 << endl;
    cout << "v1 .v2 = " << v1.dot(v2) << endl;   // 点积
    cout << "v1 x v2 = " << v1.cross(v2) << endl; // 叉积
    cout << "v1 + v2 = " << v1 + v2 << endl;      // 加
    cout << "v1 - v2 = " << v1 - v2 << endl;      // 减
    cout << "v1 * 2 = " << v1 * 2 << endl;        // 乘标量
    cout << "v1 == v2 = " << (v1 == v2) << endl;  // 比较
    cout << "v1 != v2 = " << (v1 != v2) << endl;  // 比较
    cout << "v1 += v2 = " << (v1 += v2) << endl;  // 加？

    return 0;
}

```



### 2.2 cv::Point

```c++
```



### 2.3 cv::Scalar

```c++
```



### 2.4 cv::Size

```c++
```



### 2.5 cv::Rect

```c++
```



### 2.6 cv::RotatedRect

```c++
```



### 2.7 cv::Mat

```c++
```



## 3. 基本操作

### 3.1 图像操作



### 3.2 视频操作



## 4. 机器学习基本原理与OpenCV机器学习模块



## 5. K-means和KNN



## 6. 决策树



## 7. 随机森林



## 8. Booating



## 9. 支持向量机



## 10. 神经网络



## 11. 深度神经网络



## 12. ……
