# Python类
> class






---

- 变量命名
- `_`：用于临时变量指无意义，在REPL中使用返回上一表达式结果
- `var_`：用于解决命名冲突问题(与关键字冲突)
- `_var`：用于保护变量(使用通配符导入调用方法无效)
- `__var`：用于私有变量（名称改写）
- `__var__`：用于魔术方法（内置函数）

```py




```


---
- `self`：对象
- `cls`：类

```py

class MethodClass(object):
    def __init__(self):
        pass

    def object_method(self):  # 对象方法
        pass

    @classmethod
    def class_method(cls):  # 类方法
        pass

    @staticmethod
    def static_method():  # 静态方法
        pass

    pass



```