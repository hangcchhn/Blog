# 类型



---
## 基本类型
- 空类型：`NoneType`->None
- 布尔类型：`bool`->True,False
- 数值类型：int,long,float,complex
- 字符串类型：`str`->'',"",'''''',""""""
---
## 集合类型
- 元组`tuple：`(val1, val2, ...)`
- 列表`list`：`[val1, val2, ...]`
- 集合`set`：`{val1, val2, ...}`
- 字典`dict`：`{key1:val1, key2:val2, ...}`

---
## 其他类型

- 函数function
- 类class
- 方法method

```py
from inspect import isclass, ismethod, isfunction

from types import


```

- `Ellipsis`省略类型：`...`

---
- `immutable`不可变类型：所有数值类型，字符串，元组；其他都是可变类型
    - 每次修改变量都会重新创建对象，变量中存储的内存地址都会改变


- `callable()`可调用类型
    - function
    - method
    - class
    - instance：`def __call__(self):`
---
## 字符串类型
> str

- 字符串形式
    1. `' '`或`" "`
    2. `''' '''`或`""" """`

- 字符串编码
    1. 原始(raw)字符串:`r''`
    2. unicode字符串:`u''`


- 格式化字符串
    - 占位符(类似C语言):`%d,%f,%s`
    - 单个:`"""%d""" % d1`
    - 多个:`"""%f,%s""" % (f1, s1)`
    - `f({v1}, {v2})`
    - `'{0}, {1}'.format(v0, v1)`

---

- 输出字符串
```py
# 输出到文件
file = open('path', 'a+')
# Python2:
print >> file, x
# Python3:
print(x, file=file)

# 默认打印输出，间隔符是空格，结束符是换行
print(x, sep=' ', end='\n')
print('x', x)
print('x=%s, y=%s' % (x, y,))

# 打印数组
print('x:----------\n', x, sep='')

```

---
## 切片slice
> 下标index

- `X[start:step:stop]`

- 区间前闭后开：[start, stop)
- start从0开始，结果不包含stop

- 结果数据长度：(stop - start) // step

- 下标index=-1表示最后一个元素


- 缺省情况下的默认值
    - X[:stop] = X[0:stop] = X[0:stop:1]
    - X[start:] = X[start:len(X)] = X[start:len(X):1]

- 反转：`X[::-1]`


---
## 集合类型
```py
for value in collections:

    pass


for index, value in enumerate(collections):

    pass
```


---

- `import types`
    - `@types.coroutine`
