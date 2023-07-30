# module

```py
# 处理重名问题
from __future__ import absolute_import
```

```py
# py文件
__all__ = [
    '',
]

```



---


- 格式化源码
```sh
pip install autopep8
autopep8 --aggressive --aggressive name.py

```
---
- python字节码文件.pyc
```py
python -m py.py

python -m compileall r'/path'

import py_compile
py_compile.compile('/path/name.py')

import compileall
compileall.compile_dir(r'/path')

```






---

- `dir()`函数
    - 不带参数时，返回当前范围内的变量、方法和定义的类型列表；
    - 带参数时，返回参数的属性、方法列表
        - 如果参数包含方法__dir__()，该方法将被调用。
        - 如果参数不包含__dir__()，该方法将最大限度地收集参数信息。

- `dir(__builtins__)`


- 函数工具
```py
import functools
dir(functools)


```
- `partial`函数：把一个函数的某些参数设置默认值，返回一个新的函数，调用这个新函数会 更简单。

- `wraps`函数：装饰器或注解

---
## 模块
- `inspect`模块
- `functools`模块
- `typing`模块
    - `int`，`float`，`bool`，`str`
    - `Tuple`，`List`，`Set`，`Dict`
    - `Iterable`，`Iterator`，`Generator`，`Sequence`，
    - `Any`，`Union[int, float]`，`Callable[[int], str]`，`TypeVar`，
    - `Optional[int]` -> `Union[int, None]`，`Generic`，
    - `NewType('id', int)`



- `pickle`模块：持久化，本地文件，用法类似`json`
---
