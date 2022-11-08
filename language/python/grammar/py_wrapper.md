# 装饰器
> 注解
---


可被调用对象callable:函数，实现__call__方法的类，偏函数functools.partial

装饰器参数：元组*args和字典**kwargs

多个装饰器执行顺序：从下到上

1.函数装饰器

import functools

# wrapper.__name__ = func.__name__

1.1.无参数函数装饰器
```py
def anno(func):
    @functools.wraps(func)
    def wrapper(*args, **kwargs):

        return func(*args, **kwargs)

    return wrapper
```

1.2.带参数函数装饰器
```
def anno(param):
    def decorator(func):
        @functools.wraps(func)
        def wrapper(*args, **kwargs):

            return func(*args, **kwargs)

        return wrapper

    return decorator
```

2.类装饰器：实现__init__和__call__方法


2.1.无参数类装饰器

```py
Class Anno(object):
    def __init__(self, func):
        self.func = func
        pass

    def __call__(self, *args, **kwargs):

        return self.func(*args, **kwargs)
```

2.2.带参数类装饰器
```py
Class Anno(object):
    def __init__(self):

        pass

    def __call__(self, func):
        def wrapper(*args, **kwargs):

            return func(*args, **kwargs)

        return wrapper
```


