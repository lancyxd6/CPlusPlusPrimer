usr并不是user用户的缩写，而是unix system resource 的缩写
tree -L 2 //显示两级目录
include头文件有两种方式，一个是#include “头文件”，一个是#include <头文件>。区别在于：
前者是从当前的目录来搜索。后者是一般会先搜索 -I 选项后的路径（即用gcc编译时的-I选项），之后就是标准的系统头文件路径。

//linux下使用gcc/g++编译多个.h .c 文件方法：
g++ main.cpp -o main  					//-o 指定输出可执行程序的名字
g++ main.cpp -o main -I ../myinclude/	//-I 执行头文件进行编译
g++ -c myhead.cpp -o myhead.o			//生成.o文件
g++ main.cpp -o main -I ../myinclude/  ../myinclude/myhead.o


类通常定义在头文件中，并且类名和头文件名一致。头文件不应该包含using声明。
using std::cin;
using namespace::name;

using namespace std;


g++编译多个文件采用makefile：
g++ -c APCluster.cppAPCluster.h //生成APCluster.o 中间文件
g++ -c example.cppAPCluster.h  //生成example.o中间文件
g++ -o main APCluster.o example.o


g++ test_111.cpp -std=c++11 //编译c++ 11新特性
