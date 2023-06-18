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
## 表达式
```py
# 三元表达式
result = true_value if flag else false_value


# 列表表达式
to_list = [expression for i in from_list]

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

动态代码，拼接语句

eval:执行表达式
exec:执行代码块


---

## json
```py
import json

# 处理json字符串
string = json.dumps(object)
object = json.loads(string)

# 处理json文件
json.dump(string, file)
string = json.load(file)
```
- python -> json

| python | json |
| :- | :- |
| dict | object|
| list, tuple | array|
| str, unicode | string|
| int, long, float | number|
| True  | true|
| False | false|
| None | null|

- json -> python
| json | python |
| :- | :- |
| object | dict|
| array | list|
| string | unicode|
| number(int) | int, long|
| number(real) | float|
| true | True|
| false | False|
| null | None|

- curl调用restful接口格式化输出json
`curl http://xxx | python -m json.tool`



---
## logging
> 日志

- https://docs.python.org/3/library/logging.html#logrecord-attributes




---