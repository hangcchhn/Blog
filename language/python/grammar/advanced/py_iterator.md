# 迭代器
> iterable -> iterator -> generator

---
## 可迭代的对象
> iterable
```py
class Iterable:
    """可迭代的对象:实现__iter__方法"""

    def __iter__():

        pass
```


---
## 迭代器
> iterator
```py
class Iterator:
    """迭代器：实现__iter__或__next__方法"""

    def __iter__():

        pass

    def __next__():

        pass

    pass
```

- iter函数

| 用法 | 类型 |
| :- | -: |
| iter(tuple) |tuple_iterator |
| iter(list)  |list_iterator |
| iter(set)   |set_iterator |
| iter(dict)  |dict_keyiterator |

---
# 生成器
> generator

- 使用`yield`替代`return`返回结果，使函数返回结果是个迭代器

- 调用函数返回结果：`generator object`
```py
def fibonacci():
    f0 = f1 = 1
    yield f0
    yield f1
    while True:
        f0, f1 = f1, f0 + f1
        yield f1
        pass
    pass


if __name__ == '__main__':

    for i in fibonacci():
        if i > 100:
            break
        print(i)
        pass

    pass




```

- 生成器函数库：`import itertools`


- 生成器表达式：`(expression from item in collection if condition)`



---
## 序列
> sequence
- 字符串


### 元组，列表，集合

- 元组解析式：`(expression from item in collection if condition)`
- 列表解析式：`[expression from item in collection if condition]`
- 集合解析式：`{expression from item in collection if condition}`


# 字典

- 字典解析式：`{key:value from item in collection if condition}`


