# C语言 & C++语言


---
## c & cpp
### clanguage

```c

```
### cplusplus
```cpp

```


---
## main

### clanguage
``` c
#include<stdio.h>
// 只适用C语言
void main()
{
    printf("clanguage\n");
}
```

### cplusplus
``` cpp
#include<iostream>

// 即适用C语言又适用C++语言
int main()
{
    cout << "cplusplus" << endl;
    return 0;
}

int main(int argc, char* argv[])
{
    cout << "cplusplus"
    return 0;
}
// C语言编译器将可执行文件名称也作为参数
// 命令行中的字符串也包括可执行文件名称
// 整型argc表示命令行中字符串的个数，
// 指针数组argv[]指向命令行中的各个字符串



```
---
### clanguage

```c
// 即适用C语言又适用C++语言
// 定义
struct DataType
{
    int i;
}Variable;
// DataType是结构体数据类型
// Variable是结构体类型变量

// 别名
typedef struct
{
    int i;
}Struct, *PStruct;
// Struct为结构体类型
// PStruct为结构体指针


```
### cplusplus

- C++语言可以在结构体内定义函数，C语言不可以
- C++语言中如果结构体定义对象类型成员，创建结构体类型变量就只能使用new，而不能使用malloc，因为malloc只会分配内存，不会调用类的构造函数实例化对象

```cpp
class Class
{
    int i;
}

```
---
## 字符串

### clanguage

```c

char char_array[] = "string";//字符数组
char *char_pointer = "string";//字符指针

```
### cplusplus
```cpp

```

- C++语言中字符串是常量
    - `const char* p = "string";`


---
## 编译
> compile
## 链接
> link