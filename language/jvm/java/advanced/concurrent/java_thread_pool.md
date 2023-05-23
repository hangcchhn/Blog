# 线程池
> ThreadPool


- `ThreadPoolExecutor`类实现`ExecutorService`接口
---

```java
ThreadPoolExecutor.execute()// 执行任务，无返回值
ThreadPoolExecutor.sublime()// 提交任务，有返回值
```

### 初始化

- `int corePoolSize`：核心线程数
    - 核心线程会一直存活，即使没有任务需要执行
    - 当线程数小于corePoolSize，即使有线程空闲，线程池也会优先创建新线程处理

- `int maxPoolSize`：最大线程数
    - 当线程数大于等于corePoolSize，且任务队列已满时。线程池会创建新线程来处理任务
    - 当线程数等于maxPoolSize，且任务队列已满时，线程池会拒绝处理任务而抛出异常


- `long keepAliveTime`：线程空闲时间
    - 当线程数大于corePoolSize，如果线程空闲时间达到keepAliveTime时，线程会退出，直到线程数减少到corePoolSize
- `TimeUnit unit`：单位
- `BlockingQueue<Runnable> workQueue`：任务队列
    - `ArrayBlockingQueue`：基于数组
    - `LinkedBlockingQueue`：基于链表
    - `SynchronousQueue`：
- `ThreadFactory threadFactory`：线程工厂
    - 线程设置


- `RejectedExecutionHandler handler`：任务拒绝处理器
    - `AbortPolicy`：默认，抛运行时异常
    - `CallerRunsPolicy`：由调用者执行任务
    - `DiscardPolicy`：丢弃任务
    - `DiscardOldestPolicy`：从队列中踢出最先进入队列的任务（最后一个执行）
    - 实现`RejectedExecutionHandler`接口

---
- 两种情况会拒绝新任务：
    - 当线程数已经达到maxPoolSize，且任务队列已满时，会拒绝新任务
    - 当线程池被调用shutdown()后，会等待任务队列里的任务全部执行完毕才会停止，在此期间会拒绝新任务
---
## 线程池执行任务的流程

- 当线程数小于核心线程数时，创建线程。
- 当线程数大于等于核心线程数，且任务队列未满时，将任务放入任务队列。
- 当线程数大于等于核心线程数，且任务队列已满
    - 若线程数小于最大线程数，创建线程
    - 若线程数等于最大线程数，拒绝任务


---
## `Executors`
- `ExecutorService`
    - `newSingleThreadExecutor`
    - `newFixedThreadPool`
    - `newCachedThreadPool`
    - `newWorkStealingPool`
- `ScheduledExecutorService`
    - `newScheduledThreadPooll`
    - `newSingleThreadScheduledExecutor`
```java



```

---
`ExecutorService`

```java

ExecutorService

```


