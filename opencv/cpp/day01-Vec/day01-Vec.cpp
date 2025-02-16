#include "day01-Vec.h"
#include <iostream>

using namespace std;

int main(int argc, const char **argv)
{
    // 初始化
    cv::Vec<int, 3> myVec; // 3个 int 型元素的向量
    for (int i = 0; i < 3; i++)
        myVec[i] = i;

    cv::Vec3i v3i(0, 1, 2);
    cv::Vec2d v2d(1.2, 2.4);
    cv::Vec2d v2d_1(v2d); // cv::Vec2d v2d_1 = v2d;

    // 访问下标 myVec是一个 3 行 1 列的 int 型 cv::Matx类。cv::Matx 类是 cv::Vec 类的基类。
    cout << "myVec[0] = " << myVec[0] << endl;
    cout << "myVec[1] = " << myVec[1] << endl;
    cout << "myVec[2] = " << myVec[2] << endl << endl;

    cout << "v3i[0] = " << v3i[0] << endl;
    cout << "v3i[1] = " << v3i[1] << endl;
    cout << "v3i[2] = " << v3i[2] << endl << endl;

    cout << "v2d[0] = " << v2d[0] << endl;
    cout << "v2d[1] = " << v2d[1] << endl << endl;

    cout << "v2d_1[0] = " << v2d_1[0] << endl;
    cout << "v2d_1[1] = " << v2d_1[1] << endl << endl;

    // 计算
    cv::Vec3i v1(1, 0, 0);
    cv::Vec3i v2(1, 1, 0);
    cv::Vec3i v3;

    cout << "v1 = " << v1 << endl;
    cout << "v2 = " << v2 << endl << endl;
    cout << "v1 .v2 = " << v1.dot(v2) << endl;   // 点积
    cout << "v1 x v2 = " << v1.cross(v2) << endl; // 叉积
    cout << "v1 + v2 = " << v1 + v2 << endl;      // 加
    cout << "v1 - v2 = " << v1 - v2 << endl;      // 减
    cout << "v1 * 2 = " << v1 * 2 << endl;        // 乘标量
    cout << "v1 == v2 = " << (v1 == v2) << endl;  // 比较
    cout << "v1 != v2 = " << (v1 != v2) << endl;  // 比较
    cout << "v1 += v2 = " << (v1 += v2) << endl; 

    return 0;
}