
---

| Visual Studio | MSVC | _MSC_VER |
| :-: | :-: | :-: |
| Visual Studio 2005 | MSVC v80 | _MSC_VER == 1400 |
| Visual Studio 2008 | MSVC v90 | _MSC_VER == 1500 |
| Visual Studio 2010 | MSVC v100 | _MSC_VER == 1600 |
| Visual Studio 2012 | MSVC v110 | _MSC_VER == 1700 |
| Visual Studio 2013 | MSVC v120 | _MSC_VER == 1800 |
| Visual Studio 2015 | MSVC v140 | _MSC_VER == 1900 |
| Visual Studio 2017 | MSVC v141 | _MSC_VER == 1910 |
| Visual Studio 2019 | MSVC v142 | _MSC_VER == 1920 |
| Visual Studio 2022 | MSVC v143 | _MSC_VER == 1930 |

---
## C
- 定义宏关闭安全警告和过时弃用

```c
#define _CRT_SECURE_NO_WARNINGS
#define _CRT_NONSTDC_NO_DEPRECATE
```


---

- 清空缓冲区fflush/rewind
    - 输入缓冲区stdin
    - 输出缓冲区stdout

```c
fflush(stdin);//visual studio <= 2013
rewind(stdin);//visual studio >= 2015


```


---
## C++

---



## C#


- 解决方案资源管理器->项目->右键->属性->应用程序->目标框架->.NET Framework4.5
- 解决方案资源管理器->项目->右键->属性->配置属性->常规->平台工具集->Visual Studio 2012 (v110)