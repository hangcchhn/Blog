# Spring并发


---

---
## 异步调用

- `@Async`要求修饰的方法返回值为`void`或`Future<T>`

- Spring框架默认使用`SimpleAsyncTaskExecutor`线程池

默认大小16个

`SimpleAsyncTaskExecutor`提供了限流机制:`ConcurrencyThrottleSupport`
org.springframework.util.ConcurrencyThrottleSupport
beforeAccess()
afterAccess()
通过concurrencyLimit属性来控制开关，当concurrencyLimit>=0时开启限流机制，
默认关闭限流机制即concurrencyLimit=-1，当关闭情况下会不断创建新的线程来处理任务


- Spring Boot框架推荐使用`ThreadPoolTaskExecutor`线程池