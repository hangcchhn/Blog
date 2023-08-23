# Python
---
- 编码格式
```py
# 指定执行版本:解决多版本编译器问题
#! /usr/bin/env python2
#! /usr/bin/env python3

# 指定编码格式:解决中文注释报错问题
# -*- coding: utf-8 -*-
# encoding: utf-8



# 文件格式:不同系统对应不同的换行符
:set fileformat——dos|unix
Line Separators——CRLF|LF

```
---
- 代码格式
```py
# 代码格式
# python中使用代码缩进形式代替C语言和java中的{}
# java使用驼峰命名，类名大驼峰（首字母大写），方法名小驼峰（首字母小写）
# python类名大驼峰，方法名中单词以下划线分隔（方法名也有按小驼峰命名的）


# 代码折行（python同shell）
name = func(data = data, \
    xxx = xxx, yyy = yyy)


# 一行多句使用逗号;隔开
s = 'str'; print(s)

```


---
## 启动入口
- `__file__`:源码脚步文件名
- `__name__`:程序运行模块名

```py
if __name__ == '__main__':
    """启动入口"""
    pass
```

---
## 特殊注释
```py

# 自动检查忽略错误
# NOQA:no quality assurance
#
#
```
---
```py
instance_name: class_name = class_name()

if isinstance(instance_name, class_name):

    pass

def function_name() -> return_type:

    pass

```




---


## 动态代码，拼接语句

- `eval()`函数：执行表达式
- `exec()`函数：执行代码块






---
## 变量解析
- 变量命名空间，即作用域Scope

- 变量解析原则LEGB
    - 本地Local：函数function
    - 嵌套Enclosing：外层嵌套函数
    - 全局Global：模块module
    - 内置Build-in：语言python

---

- 在不使用特殊修饰变量时
- 内层函数无法解析外层函数的局部变量
- 函数内可以使用解析全局变量，但不能修改全局变量的值

- 在函数内给函数外变量赋值，相当于定义新的局部变量，不影响函数外变量的值

```py


global

nonlocal

```

---

- 鸭子类型(duck typing)
- 自省Introspection：运行时判断对象的类型


- `bool`类型判断真假时：0，`None`，空字符串,空列表，空元组，空集合，空字典都是`False`
- 字符串使用`in`进行子串判断