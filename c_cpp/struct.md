
# 结构体
> struct

## C语言——结构体

- 成员变量没有权限控制


```c
typedef struct Struct
{
    int i;

}Struct, *PStruct;

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