# Python

>python 号称"**胶水语言**"

##
- 网络爬虫
- 科学计算
- 机器学习




## 版本

### Python2
- 2.7.14
- 2.7.18

### Python3
- 3.6.5
- 3.7.3|4
- 3.8.5
- 3.9.6|7


## 工具

- ipython

- jupyter notebook

- anaconda

- spyder

- pycharm

- visual studio code







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


# 一行多句使用;隔开
s = 'str'; print(s)

```
---

- 变量命名
- `_`:用于临时变量指无意义，在REPL中使用返回上一表达式结果
- `var_`:用于解决命名冲突问题(与关键字冲突)
- `_var`:用于保护变量(使用通配符导入调用方法无效)
- `__var`:用于私有变量（名称改写）
- `__var__`:用于魔术方法（内置函数）

---
- 启动入口
- `__file__`:源码脚步文件名
- `__name__`:程序运行模块名

```py
if __name__ == '__main__':
    """启动入口"""
    pass
```




---

```py
# 三元表达式
result = true_value if flag else false_value


# 列表表达式
to_list = [expression for i in from_list]

```
---
lambda表达式 -> 匿名函数
```py
def func(x):
    return expression(x)

func = lambda x: expression(x)



map(lambda x:)
filter(lambda x:)
```

---



python中*或**的多重含义

函数参数*args, **kwargs


*args:非键值对集合

args = (value1, value2,)
args = [value1, value2,]
args = {value1, value2,}
func(*args)

func(value1, value2,)

**kwargs:键值对
kwargs = {key1:value1, key2:value2,}
func(**kwargs)

func(key1=value1, key2=value2)


zip(iter):
- Python2将元素转成元组，整体组成列表
- Python3将元素转成元组，整体组成对象，对象可转列表

以多个参数的维度的最小值为长度，取每个参数一个元素组成一个元组

zip(*iter)=iter
序列解包:"*表达式"只支持Python3，不支持Python2
使用"*表达式"获取任意长度的Iterable对象中某些固定模式数据
"*表达式"可以位于第一个位置、最后一个位置或中间任意的位置

1.算数运算
    *   代表乘法
    **  代表乘方

2.函数形参
    *args 表示多个无名参数，它本质是一个 tuple
    **kwargs 表示多个带名参数，它本质上是一个 dict

3.函数实参
    对元组和字典进行解引用

4.序列解包
    只有*，没有**；只支持Python3，不支持Python2

---



---

Python Virtual Machine

python虚拟机