# 内存
> memory


- 代码区：存放机器指令
- 全局区：存储全局变量和常量，静态变量，字符串常量。
- 栈区：存储局部变量，函数参数；由编译器管理，自动释放。
    - 函数不要返回局部变量地址
- 堆区：由程序员申请和释放
    - 对于程序员未释放的内存空间，程序运行结束时由操作系统自动回收。




---
## 内存的申请和释放

- C语言使用malloc和free对内存进行申请和释放
- C++语言使用new和delete对内存进行申请和释放

---

- clanguage中malloc和free是函数
```c
#include<stdlib.h>
#include<malloc.h>

Struct *ps = (Struct*) malloc(sizeof(Struct));
free(ps);

```

- cplusplus中new和delete是关键字
```cpp
Class *pc = new Class();
delete pc;
```