
---

一切皆是对象

- 变量作为函数参数使用引用传递
- 变量存储的都是对象的内存地址
- 参数传入的都是对象的内存地址

不可变对象:数值类型，字符串，元组

- 每次修改变量都会重新创建对象
- 变量中存储的内存地址都被改变

其他数据类型都是可变对象

---

数据类型:
空类型:         NoneType->None
布尔类型:       bool->True,False
数值类型:       int,long,float,complex
字符串类型:     str->'',"",'''''',""""""

元组tuple:  (val1, val2, ...)
列表list:   [val1, val2, ...]
集合set:    {val1, val2, ...}
字典dict:   {key1:val1, key2:val2, ...}


类型转换:
int()
long()

str()
bool()

tuple()
list()
set()
dict()

---

Sequence


---

返回对象唯一标识:id(name)

返回对象数据类型:type(name)

name: type = value

if isinstance(name, type):

    pass

def function_name() -> return_type:

    pass




---




---

var0 is var1:两个变量指向同一对象返回True
var0 == var1:两个变量指向同一对象含有相同内容返回True
id(var0) == id(var1):返回True不能说明是两个变量是同一对象

克隆对象(集合属性的浅复制)
is False
== True


- 浅复制:只复制最外层对象
- 深复制:递归复制所有对象

```py
import copy
var1 = copy.copy(var0)  # 浅复制
var2 = copy.deepcopy(var0)  # 深复制
```

- 特别注意，赋值和切片都是浅复制

---
## str
> 字符串

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
- 切片slice->index下标

X[start:step:stop]

区间前闭后开:[start, stop)
start从0开始，结果不包含stop

结果数据长度:(stop - start) // step

下标index=-1表示最后一个元素


缺省情况下的默认值
X[:stop] = X[0:stop] = X[0:stop:1]
X[start:] = X[start:len(X)] = X[start:len(X):1]

反转
x[::-1]

```py
for value in collections:

    pass


for index, value in enumerate(collections):

    pass
```

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
## abc
> 抽象基类:ABC(Abstract Base Class)
```py
from abc import ABCMeta, abstractmethod

class AbstractClass(metaclass=ABCMate):

    @abstractmethod
    def func():
        pass



class ImplementClass(AbstractClass):

    def func():
        # code
        pass

```



---