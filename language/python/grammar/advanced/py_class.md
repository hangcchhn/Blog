# Python类
> class

- 所有`class`都继承`object`类，多继承时使用广度优先搜索

---

- 静态方法`__new__(cls)`：分配内存空间， 创建类实例化对象
    - `Class`类`__new__(cls)`参数与`__init__(self)`相同
    - 返回`return super(Class, cls).__new__(cls)`，即`self`
- 实例方法`__init__(self)`：初始化类实例化对象
    - 先执行`__new__`，再执行`__init__`
- `__del__(self)`：释放内存空间
    - `del instance`操作不一定会触发`__del__`方法

```py

class Class(object):

    def __new__(cls, attr):
        print('__new__')
        return super(Class, cls).__new__(cls)

    def __init__(self, attr):
        print('__init__')
        self.attr = attr
        pass

    def __del__(self):
        print('__del__')
        pass

```

- 当继承不可变类型时，使用`__new__`方法实现自定义实例化对象过程

---

## 变量命名

- `_`：用于临时变量指无意义
    - 在REPL(read-eval-print loop)中使用返回上一表达式结果
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
    def __init__(self): # 初始化函数
        pass

    def instance_method(self):  # 实例方法
        pass

    @classmethod
    def class_method(cls):  # 类方法
        pass

    @staticmethod
    def static_method():  # 静态方法
        pass

    pass



```

---
- python默认使用dict保存类的实例属性，浪费内存空间
- `__slots__`属性指定类的实例属性范围，节约内存空间

---
## ABC
> Abstract Base Class

- 抽象基类ABC
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
## 元类

- 类是用来创建对象的，元类是用来创建类的
- 默认元类：`metaclass=type`

- ORM
- 设计模式：单例模式

- 元编程(metaprogramming)

```py
class TypeClass(type):

    def __new__(cls, class_name, base_class, attr_method_dict):
        # return type(class_name, base_class, attr_method_dict)
        # return type.__new__(cls, class_name, base_class, attr_method_dict)
        return super(TypeClass, cls).__new__(cls, class_name, base_class, attr_method_dict)

    pass


class MetaClass(object, metaclass=TypeClass):
    pass


```

- 动态创建类
```py
def init(self, args):
    self.attr = args
    pass


def function(self):
    print(str(self))
    pass


def dynamic_type():
    """动态类型"""
    Dynamic = type('Dynamic', (object,), {'__init__': init, 'method': function, 'attr': 'args', })
    dynamic = Dynamic('name')
    dynamic.method()
    print(Dynamic.attr)
    print(dynamic.attr)
    pass

```