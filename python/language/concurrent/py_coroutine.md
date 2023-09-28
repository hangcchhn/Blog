# 协程
> coroutine

- `async`添加在函数声明前
    - Python 3.5+

- asyncio
- trio
- AnyIO


```py

def function():
    return object

def generator():
    yield object

async def coroutine():
    return object


async def async_generator():
    yield object
```


- `await`必须在函数里使用


- `coroutine`协程


---
- `Future`
    - `cancel`
    - `cancelled`
    - `done`
    - `result`


---
- `Task`任务
    - `asyncio.create_task(function_name())`
    - `asyncio.ensure_future(function_name())`
---

- `yield from`
- `@asyncio.coroutine`


- `Awaitable`可等待类型：协程，任务，Future
```py
class Awaitable(metaclass=ABCMeta):

    pass

class Coroutine(Awaitable):
```

-

