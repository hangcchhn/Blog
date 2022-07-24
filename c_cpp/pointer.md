# 指针
> pointer


- 指针等价于地址，指针是一种引用类型，存储的是地址。

- 指针变量存储的是指向的变量对应的内存地址
- 指针变量引用的是地址对应的内存空间的数据

- 指针类型占用字节就是内存地址长度，内存空间大小；与CPU或编译器位数有关

---
- `int`:整型数据类型
- `i`:整型变量，存储数据
- `&i`:整型变量的地址
- `int*`:整型指针类型
- `p`:指针变量，存储地址
- `*p`:指针变量的数据：指针指向的地址存储的数据


```c
void main()
(
    int i = 0;
    // 指向i的指针p
    int* p = &i;
    // 修改指针p的数据等同于修改变量i
    *p = 1;
)

```

- typedef
```c
typedef struct { int i; } Struct, *PStruct;
// Struct = *PStruct -> Struct* = PStruct
```
---

# 指针与数组


# 指针与结构体


# 指针与字符串
> `#include<string.h>`
---
## C语言——结构体
```c


void printfStruct(Struct s)
{
    printf('%d\n', s.i);
}

int main()
{
    //创建结构体
    struct Variable variable = { 0 };
    Struct s = {0};

    // 两种类型指针
    Struct *p = &s;
    PStruct ps = &s;
    // 分配内存
    PStruct pointer = malloc(sizeof(PStruct));
    return 0;
}

```



---
## C++语言——结构体

```cpp
typedef struct Struct
{
    int i;
    // C++语言可以在结构体内定义函数，C语言不可以
    void coutStruct()
    {
        cout << i << endl;
    }

}Struct, *PStruct;


int main()
{
    Struct s = {1};
    s.coutStruct();
    return 0;
}

```
## C++语言——类和对象


```cpp
class Class
{
    int i;
    // 构造函数
    Class(int i){
        this.i = i;
    }
    void coutClass()
    {
        cout << i << endl;
    }
};


int main()
{
    Class c = {1};
    c.coutClass();
    return 0;
}

```