# MSVC




- 基本数据类型包括：BYTE、CHAR、WORD、SHORT、INT等。
- 指针类型的命令方式一般是在其指向的数据类型前加`LP`或`P`，LP为长指针，P为短指针，
    - 在32位系统中已经不再区分，都是一样的长度。
- 句柄类型的命名方式一般都是在对象名前加`H`，
- 无符号类型一般是以`U`开头。


- LPSTR:`L`代表long(长整型)，`P`代表pointer(指针)，`STR`表示String(字符串)。

- near(近)指针：16位段内偏移地址
- far(远)指针：16位段地址＋16位段内偏移地址
- huge(巨)指针：32位规格化的具有唯一性的内存地址

- char：一个字节（字符
- word：两个字节（字）


- encoding:字符编码
    - ANSI：不同地区扩展编码方式的统称，
        - 各个国家和地区所独立制定的兼容ASCII，但互相不兼容的字符编码。
    - ASCII:8bit(比特)=1byte(字节)



- unicode:字符集charset
    - UTF-8
    - UTF-16
    - UTF-32



---
| MSVC | C | info |
| :- | :- | :- |
| BOOL | int | 布尔类型
| BYTE | unsigned char | 字节类型
| CHAR | char | 字符类型
| INT | int | 32位整型
| INT32 | | 32位整型
| INT64 | | 64位整型
| INT_PTR | | 指向INT类型数据的指针类型
| LONG | long | 32 位符号整型
| LONGLONG| | 64 位符号整型
| LONG32 | | 32 位符号整型
| LONG64 | | 64 位符号整型
| UCHAR | unsigned char | 无符号CHAR
| UINT | unsigned int | 无符号 INT
| ULONG | unsigned long | 无符号 LONG
| DWORD | | 字节无符号整型数据(根据系统而定)
| DWORD32 | unsigned int | 32 字节无符号整型数据
| DWORD64 | unsigned long | 64 字节无符号整型数据
| FLOAT | float | 浮点数据类型
| CONST | const | 常量
| VOID | void | 空类型
| HANDLE | | 对象的句柄，最基本的句柄类型
| HICON | | 图标的句柄
| HINSTANCE| | 程序实例的句柄
| HKEY | | 注册表键的句柄
| HMODULE | | 模块的句柄
| HWND | | 窗口的句柄
| LPARAM | | 消息的 L 参数
| WPARAM | | 消息的 W 参数
| LPCSTR | | Windows（ANSI）字符串常量
| LPCTSTR | | 根据环境配置，如果定义了 UNICODE 宏，则是 LPCWSTR 类型，否则是 LPCSTR 类型
| LPCWSTR | | Windows（UNICODE）字符串常量
| LPDWORD | | 指向 DWORD 类型数据的指针
| LPSTR | | Windows (ANSI)字符串变量
| LPTSTR | | 根据环境配置，如果定义了UNICODE、则是 LPWSTR 类型，否则是 LPSTR 类型
| LPWSTR | | Windows（UNICODE）字符串变量
| SHORT | short | 无符号短整型（ 16 位）
| SIZE_T | | 表示内存大小，以字节为单位，其最大值是 CPU 最大寻址范围
| TCHAR | | 如果定义了UNICODE，则为 WCHAR，否则为 CHAR
| WCHAR | wchar_t | 16 位 Unicode 字符
| WINAPI | | Windows API 的函数调用方式，常见于 SDK 头文件中对 API 函数的声明中，相当于__stdcall
| WORD | unsigned short | 16 位无符号整型数据

---
