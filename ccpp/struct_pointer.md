# struct_pointer
> 结构体&指针


- C语言结构体
```c
typedef struct Struct
{
    int i;
}Struct, *PStruct;

void printfStruct(Struct s)
{
    printf('%d\n', s.i);
}

void main()
{
    Struct s = {1};
    printfStruct(s);
    // 两种类型指针
    Struct* p = &s;
    PStruct ps = &s;
}

```



- C++语言结构体

```cpp
typedef struct Struct
{
    int i;
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
- C++语言类


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