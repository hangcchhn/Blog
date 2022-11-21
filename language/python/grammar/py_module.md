

---


格式化源码
```
pip install autopep8
autopep8 --aggressive --aggressive name.py

```
---
pyc:python字节码文件

python -m py.py

python -m compileall r'/path'

import py_compile
py_compile.compile('/path/name.py')

import compileall
compileall.compile_dir(r'/path')







---


py gc

垃圾回收机制以引用计数为主、分代回收和标记清除为辅

- 小整数[-5,256]，共用对象，常驻内存
- 大整数，不共用内存；若引用计数为0，则销毁

- 单个字符共用对象，常驻内存
- 单个单词(不空格的字符串)，默认开启intern机制，共用对象；若引用计数为0，则销毁
- 多个单词(含空格的字符串)，不开启intern机制，不共用对象；若引用计数为0，则销毁

- 数值和字符串类型都是不可变的，每次修改都是重新创建对象


垃圾回收(Garbage Collection)

1.引用计数(reference counting)：
python程序将创建的对象添加到refchain环状双向链表中
对象内部都有一个ob_refcnt用来保存当前对象的引用计数

2.标记清除(mark sweep)：
可能存在循环引用问题的数据类型：列表、元组、字典、集合、自定义类
标记清除专门针对引用计数可能存在循环引用的对象进行特殊处理的算法


3.分代回收(generation collection)：
分代回收对标记清除以空间换时间优化的算法
可能存在循引用的对象拆分到三个链表分三代



```py

import sys
# 查询变量引用计数
obj = "str"
ref_cnt = sys.getrefcount(obj)


import gc
obj = "str"
del obj
# 设置垃圾回收开关
gc.disable()
gc.enable()

# gc设置debug日志:gc.DEBUG_COLLECTABLE | gc.DEBUG_UNCOLLECTABLE | gc.DEBUG_INSTANCES | gc.DEBUG_OBJECTS
gc.set_debug(gc.DEBUG_LEAK)


显式执行垃圾回收
gc.collect()

自动执行垃圾回收频率
gc.get_threshold()
# (700, 10, 10)
当链表中的对象超过 700个就进行零代回收
当进行 10 次零代回收之后就进行一代回收
当进行 10 次一代回收之后就进行二代回收
gc.set_threshold(700, 10, 10)

# 获取当前自动执行垃圾回收的计数器，长度为3的列表，表示分代回收分为三代
gc.get_count()

gc.garbage


```

---


缓存机制


---

dir方法
不带参数时，返回当前范围内的变量、方法和定义的类型列表；

带参数时，返回参数的属性、方法列表
如果参数包含方法__dir__()，该方法将被调用。
如果参数不包含__dir__()，该方法将最大限度地收集参数信息。

内建属性和方法
```py
class obj:
    pass

dir(obj)

['__class__',
 '__delattr__',
 '__dict__',
 '__dir__',
 '__doc__',
 '__eq__',
 '__format__',
 '__ge__',
 '__getattribute__',
 '__gt__',
 '__hash__',
 '__init__',
 '__init_subclass__',
 '__le__',
 '__lt__',
 '__module__',
 '__ne__',
 '__new__',
 '__reduce__',
 '__reduce_ex__',
 '__repr__',
 '__setattr__',
 '__sizeof__',
 '__str__',
 '__subclasshook__',
 '__weakref__']
```
内建函数 build-in function

```py
dir(__builtins__)
['ArithmeticError', 'AssertionError', 'AttributeError', 'BaseException', 'BufferError',
 'BytesWarning', 'DeprecationWarning', 'EOFError', 'Ellipsis', 'EnvironmentError', 'Exception',
 'False', 'FloatingPointError', 'FutureWarning', 'GeneratorExit', 'IOError', 'ImportError',
 'ImportWarning', 'IndentationError', 'IndexError', 'KeyError', 'KeyboardInterrupt',
 'LookupError', 'MemoryError', 'NameError', 'None', 'NotImplemented', 'NotImplementedError',
 'OSError', 'OverflowError', 'PendingDeprecationWarning', 'ReferenceError', 'RuntimeError',
 'RuntimeWarning', 'StandardError', 'StopIteration', 'SyntaxError', 'SyntaxWarning', 'SystemError',
 'SystemExit', 'TabError', 'True', 'TypeError', 'UnboundLocalError', 'UnicodeDecodeError',
 'UnicodeEncodeError', 'UnicodeError', 'UnicodeTranslateError', 'UnicodeWarning', 'UserWarning',
 'ValueError', 'Warning', 'ZeroDivisionError',
 '__debug__', '__doc__', '__import__', '__name__', '__package__',
 'abs', 'all', 'any', 'apply', 'basestring', 'bin', 'bool', 'buffer', 'bytearray', 'bytes', 'callable',
 'chr', 'classmethod', 'cmp', 'coerce', 'compile', 'complex', 'copyright', 'credits', 'delattr', 'dict',
 'dir', 'divmod', 'enumerate', 'eval', 'execfile', 'exit', 'file', 'filter', 'float', 'format', 'frozenset',
 'getattr', 'globals', 'hasattr', 'hash', 'help', 'hex', 'id', 'input', 'int', 'intern', 'isinstance',
 'issubclass', 'iter', 'len', 'license', 'list', 'locals', 'long', 'map', 'max', 'memoryview', 'min', 'next',
 'object', 'oct', 'open', 'ord', 'pow', 'print', 'property', 'quit', 'range', 'raw_input', 'reduce', 'reload',
 'repr', 'reversed', 'round', 'set', 'setattr', 'slice', 'sorted', 'staticmethod', 'str', 'sum', 'super',
 'tuple', 'type', 'unichr', 'unicode', 'vars', 'xrange', 'zip']
```
help(function)

range
xrange

map
filter
reduce
sorted



Python2.7
```py
import functools
dir(functools)
['WRAPPER_ASSIGNMENTS', 'WRAPPER_UPDATES', '__builtins__', '__doc__', '__file__', '__name__', '__package__',
'cmp_to_key', 'partial', 'reduce', 'total_ordering', 'update_wrapper', 'wraps']

Python3.7
import functools
dir(functools)
['RLock', 'WRAPPER_ASSIGNMENTS', 'WRAPPER_UPDATES', '_CacheInfo', '_HashedSeq',
'__all__', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__',
'_c3_merge', '_c3_mro', '_compose_mro', '_convert', '_find_impl', '_ge_from_gt', '_ge_from_le', '_ge_from_lt', '_gt_from_ge', '_gt_from_le',
'_gt_from_lt', '_le_from_ge', '_le_from_gt', '_le_from_lt', '_lru_cache_wrapper', '_lt_from_ge', '_lt_from_gt', '_lt_from_le', '_make_key',
'cmp_to_key', 'get_cache_token', 'lru_cache', 'namedtuple', 'partial', 'partialmethod',
'recursive_repr', 'reduce', 'singledispatch', 'total_ordering', 'update_wrapper', 'wraps']

```
partial函数
把一个函数的某些参数设置默认值，返回一个新的函数，调用这个新函数会 更简单。

wraps函数:装饰器或注解



---