# 线程池
> ThreadPool


---
## 构造器

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
### 线程池执行任务的流程

- 当线程数小于核心线程数时，创建线程。
- 当线程数大于等于核心线程数，且任务队列未满时，将任务放入任务队列。
- 当线程数大于等于核心线程数，且任务队列已满
    - 若线程数小于最大线程数，创建线程
    - 若线程数等于最大线程数，拒绝任务


---
- `Executor.execute()`方法
- `ExecutorService`接口
    - `submit`方法
    - `invokeAll`方法
    - `invokeAny`方法
- `AbstractExecutorService`抽象类实现`ExecutorService`接口
    - `newTaskFor`方法
    - `cancelAll`方法


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
- 不推荐使用Executors创建线程池，
## ThreadPoolExecutor
- `ThreadPoolExecutor`类继承`AbstractExecutorService`抽象类


---
## ForkJoinPool
- `ForkJoinPool`类继承`AbstractExecutorService`抽象类
    - `fork()`方法将任务放在队列中
    - `join()`方法让线程处理其他任务直到子任务完成
- 分治算法：先拆分再合并，类似MapReduce
- 工作窃取(work-stealing)
    - 每个工作线程`ForkJoinWorkerThread`都对应一个工作队列`WorkQueue`，使用随机哈希关联

- `WorkQueue`双端队列，对应工作线程从头部存取任务，其他工作线程从尾部窃取任务
- `ManagedBlocker`接口

- `ForkJoinTask`
    - 递归任务`RecursiveTask`
    - 递归动作`RecursiveAction`
    - `CountedCompleter`

- `ForkJoinPool.commonPool()`


- `Future`
    - `get()`阻塞调用
    - `isDone()`轮询状态
- `FutureTask`

---
## CompletableFuture

- 观察者模式：任务执行完成后通知监听者

- `CompletableFuture`类实现了`Future`接口和`CompletionStage`接口

- 线程池默认使用`ForkJoinPool.commonPool()`，
- 存在上一个任务，默认与上一个任务共用同一个线程池；
- 以`*Async`为后缀的方法，不指定使用默认线程池，可以通过参数指定线程池；

- 创建`CompletableFuture`实例：
    - `runAsync`方法：无返回，参数`Runnable`接口，
    - `supplyAsync`方法：有返回，参数`Suppiler`接口
    - `completedFuture`方法：通过参数指定默认返回

- 设置`CompletableFuture`结果
    -`complete`方法：指定结果
    - `completeExceptionally`方法：指定异常

---
### CompletionStage



- 串行执行：上一个任务执行完成后继续执行，参数就是上一个任务的返回；
    - 无参数无返回：`thenRun`
    - 有参数
        - 无返回：`thenAccept`
        - 有返回：`thenApply`方法，参数是上一个任务的结果
        - 有返回：`thenCompose`方法，参数是以上一个任务的结果为参数创建的`CompletionStage`实例
- 执行回调：
    - 异常回调：`exceptionally`
    - 任务执行完成后执行回调
        - 无返回：`whenComplete`
        - 有返回：`handle`

- 任务组合
    - 与：多个任务都执行完成后才执行下一个任务
        - 无参数无返回：`runAfterBoth`
        - 多参数无返回：`thenAcceptBoth`
        - 多参数有返回：`thenCombine`
    - 或：多个任务中任意一个执行完成后就执行下一个任务
        - 无参数无返回：`runAfterEither`
        - 多参数无返回：`acceptEither`
        - 多参数有返回：`applyToEither`

- `allOf`方法：多个任务都执行完成后才执行，
    - 只要有一个任务抛出异常，`CompletableFuture`类返回就抛出异常；
    - 所有任务都正常执行，`CompletableFuture`类就返回null
- `anyOf`方法：多个任务中任意一执行完成的任务个执行完成后就执行，
    - 执行完成的任务抛出异常，`CompletableFuture`类返回就抛出异常；
    - 执行完成的任务正常返回，`CompletableFuture`类就返回执行完成的任务的结果

---
- `Runnable`接口：无参数无返回
- `Consumer`接口：有参数无返回
- `Function`接口：有参数有返回






- `ExecutorCompletionService`类实现`CompletionService`接口


