# Python内置函数

- builtins.py


---


- help(x):帮助
- type(x):类型


- id(x):内存地址

- len(x):元素个数

---
- map(func, iter)
- filter(func, iter)
- next(iter)
---
- enumerate(x)
```py
for index, value in enumerate(x):

    pass

```

- zip(*iter)
```py
for item0, item1 in zip(iter0, iter1):

    pass

```

---
- hash(x)
- repr(x)
- ascii(x)
- format()
- vars(x)

---
- isinstance()
- issubclass()

---

- all(x)
- any(x)


---
## 属性
- hasattr()
- getattr()
- setattr()
- delattr()

---
- callable()

- globals():全局变量
- locals():局部变量


---
- input()
- print()

- open(, mode='')

---

- compile
- exec()
- eval()

---
# 装饰器

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

- range(x)

- iter(x)


- object()

- super()

- slice(x)
- sorted(x, key=None, reverse=False)
- reversed(seq)
---
## 数学计算

- abs(x)
- min(x)
- max(x)
- sum(x)
- pow(x)

- round(x)


- divmod(x)
```py

```





---
## 进制转换
- hex(x)
- oct(x)
- bin(x)
- ord(x)
- chr(x)



