# 内置函数

- builtins.py


---


- help(x):帮助


- id(x):内存地址



---
- map(func, iter)
- filter(func, iter)
- next(iter)




---
- enumerate(iter)
```py
for index, value in enumerate(iter):

    pass

```

- zip(*iter)
```py
for item0, item1 in zip(iter0, iter1):

    pass

```


---
- hash(x)
    - `x.__hash__()`

- format()
    - - `x.__format__()`



- repr(obj)
- ascii(obj)


---



---
## 属性
- hasattr()
- getattr()
- setattr()
- delattr()

---

- iter(x)


---
- isinstance(obj, cls)
- issubclass(cls, base)

- base = super()
- obj = object()
- cls = type(obj)

- callable(obj)

- 返回list:记录命名空间内的
    - globals():全局变量
    - locals():局部变量

- vars():本地命名空间
- vars(obj):对象命名空间

---
- x = input()
- print(x)

- open(, mode='')

---

- compile(string)
- exec()
- eval()

---
## 装饰器

- `@classmethod()`
- `@staticmethod()`
- `@property()`

---
```py

__import('')__

```

---
## 类型转换

- int(x)
- float(x)
- str(x)
- bool(x)
- bytes(x)
- bytearray(x)
- complex(real, imag)

- memoryview(bytes)

- list(x)
- tuple(x)
- dict(x)
- set(x)

- frozenset(x)

- range(start, stop. step)

- slice(start, stop. step)
- sorted(x, key=None, reverse=False)
- reversed(seq)

---
## 数学计算

- len(seq)
- sum(iter)

- min(iter)
- max(iter)

- pow(x)
- abs(x)

- all(iter)
- any(iter)

- round(x)


- divmod(x, y)
```py

```





---
## 进制转换
- hex(x)
- oct(x)
- bin(x)
- ord(x)
- chr(x)



