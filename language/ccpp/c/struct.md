
# 结构体
> struct

- 结构体的成员变量没有权限控制，类有


- C++语言可以在结构体内定义函数，C语言不可以
- C++语言中，如果结构体的成员类型存在类，创建结构体类型的变量时就只能使用new，而不能使用malloc，因为malloc只会分配内存，不会调用类的构造函数实例化对象


---
## 结构体




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



