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

```c

char *char_pointer = "string";
char char_array[] = "string";

#include<string.h>
// 函数str___()




```







