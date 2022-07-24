# 内存管理


- 代码区：存放机器指令
- 全局区：存储全局变量和常量，静态变量，字符串常量。
- 栈区：存储局部变量，函数参数；由编译器管理，自动释放。
    - 函数不要返回局部变量地址
- 堆区：由程序员申请和释放
    - 对于程序员未释放的内存空间，程序运行结束时由操作系统自动回收。







---
## 申请和释放

- C语言使用malloc和free对内存进行申请和释放
- C++语言使用new和delete对内存进行申请和释放
- C++语言时兼容C语言的，主要是比C语言多了面向对象编程



### clanguage

- malloc和free是函数
```c
#include<stdlib.h>
#include<malloc.h>

Struct *p = malloc(sizeof(Struct));
free(p);

```


### cplusplus

- new和delete是关键字
```cpp
Class c = new Class();
delete c;
```




---