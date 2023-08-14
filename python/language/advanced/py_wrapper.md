# 装饰器
> 注解

- 可被调用对象callable
    - 函数
    - 实现__call__方法的类
    - 偏函数functools.partial

- 装饰器参数
    - 元组*args
    - 字典**kwargs

- 多个装饰器按从下到上的顺序执行


## 函数装饰器
```py
import functools

# wrapper.__name__ = func.__name__
```


- 无参数函数装饰器
```py
def anno(func):
    @functools.wraps(func)
    def wrapper(*args, **kwargs):

        return func(*args, **kwargs)

    return wrapper
```

- 带参数函数装饰器
```py
def anno(param):
    def decorator(func):
        @functools.wraps(func)
        def wrapper(*args, **kwargs):

            return func(*args, **kwargs)

        return wrapper

    return decorator
```

## 类装饰器

- `class`实现`__init__`和`__call__`方法
- `function`参数`cls`


- 无参数类装饰器

```py
Class Anno(object):
    def __init__(self, func):
        self.func = func
        pass

    def __call__(self, *args, **kwargs):

        return self.func(*args, **kwargs)
```

- 带参数类装饰器
```py
Class Anno(object):
    def __init__(self):
        pass

    def __call__(self, func):
        def wrapper(*args, **kwargs):

            return func(*args, **kwargs)

        return wrapper
```


---




```



```

---