#
---

Iterable -> Iterator -> Generator

0.可迭代的对象(Iterable)
```py
class Iterable:
    """可迭代的对象:实现__iter__方法"""

    def __iter__():

        pass
```



1.迭代器(Iterator)
```py
class Iterator:
    """迭代器：实现__iter__或__next__方法"""

    def __iter__():

        pass

    def __next__():

        pass

    pass
```

iter函数
iter(tuple) tuple_iterator
iter(list)  list_iterator
iter(set)   set_iterator

iter(dict)  dict_keyiterator

2.生成器(Generator)
使用yield替代return

生成器函数
import itertools


生成器表达式 = (expression from item in collection if condition)


3.序列

字符串

元组，列表，集合

元组解析式 = (expression from item in collection if condition)
列表解析式 = [expression from item in collection if condition]
集合解析式 = {expression from item in collection if condition}


4.字典

字典解析式 = {key:value from item in collection if condition}

---

动态代码，拼接语句

eval:执行表达式
exec:执行代码块
