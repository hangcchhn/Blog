# Spring并发


---

---
# 异步调用
@Async
要求修饰的方法返回值为void或Future<T>

spring默认使用SimpleAsyncTaskExecutor线程池

默认大小16个

SimpleAsyncTaskExecutor提供了限流机制:ConcurrencyThrottleSupport
org.springframework.util.ConcurrencyThrottleSupport
beforeAccess()
afterAccess()
通过concurrencyLimit属性来控制开关，当concurrencyLimit>=0时开启限流机制，
默认关闭限流机制即concurrencyLimit=-1，当关闭情况下会不断创建新的线程来处理任务


spring-boot推荐使用ThreadPoolTaskExecutor