
进程：程序执行
系统资源分配的基本单位

每个进程拥有独立的地址空间

进程间通讯：文件，套接字

线程
系统运算调度的基本单位

一个进程有一个或多个线程组成

线程实现
1.继承Thread类
2.实现Runnable接口（无返回值）
3.实现Callable接口（有返回值，返回值是Future接口）
--------------------------------------------------------------------------------------------------


线程的六种状态：java.lang.Thread.State
NEW：创建
RUNNABLE：运行
BLOCKED：阻塞
WAITING：等待
TIMED_WAITING：等待超时
TERMINATED：终止

new Thread():->NEW

synchronized:RUNNABLE<-->BLOCKED

Object.wait()|wait(Long):RUNNABLE->WAITING|TIMED_WAITING
Object.notify()|notifyAll()：WAITING|TIMED_WAITING->RUNNABLE

Thread.start():NEW->RUNNABLE
Thread.sleep():RUNNABLE->TIMED_WAITING
Thread.join()|join(Long):RUNNABLE->WAITING|TIMED_WAITING

LockSupport.park():RUNNABLE->WAITING
LockSupport.parkNanos():RUNNABLE->TIMED_WAITING
LockSupport.parkUntil():RUNNABLE->TIMED_WAITING
LockSupport.unpark(Thread):TIMED_WAITING->RUNNABLE



--------------------------------------------------------------------------------------------------

ThreadPoolExecutor.execute():执行任务，无返回值
ThreadPoolExecutor.sublime():提交任务，有返回值


线程池初始化

1、corePoolSize：核心线程数
    * 核心线程会一直存活，即使没有任务需要执行
    * 当线程数小于corePoolSize，即使有线程空闲，线程池也会优先创建新线程处理


3、maxPoolSize：最大线程数
    * 当线程数大于等于corePoolSize，且任务队列已满时。线程池会创建新线程来处理任务
    * 当线程数等于maxPoolSize，且任务队列已满时，线程池会拒绝处理任务而抛出异常

2、queueCapacity：任务队列容量（阻塞队列）
    * 当线程数达到最大线程数时，新任务会放在队列中排队等待执行


4、 keepAliveTime：线程空闲时间
    * 当线程数大于corePoolSize，如果线程空闲时间达到keepAliveTime时，线程会退出，直到线程数减少到corePoolSize


5、allowCoreThreadTimeout：允许核心线程超时
    * 设置allowCoreThreadTimeout=true（默认false）时，核心线程会超时关闭
    * 如果allowCoreThreadTimeout=true，则会直到线程数量=0

    
6、rejectedExecutionHandler：任务拒绝处理器
    * 两种情况会拒绝处理任务：
        - 当线程数已经达到maxPoolSize，切队列已满，会拒绝新任务
        - 当线程池被调用shutdown()后，会等待线程池里的任务执行完毕，再shutdown。如果在调用shutdown()和线程池真正shutdown之间提交任务，会拒绝新任务
    * 线程池会调用rejectedExecutionHandler来处理这个任务。如果没有设置默认是AbortPolicy，会抛出异常
    * ThreadPoolExecutor类有几个内部实现类来处理这类情况：
        - AbortPolicy 丢弃任务，抛运行时异常
        - CallerRunsPolicy 执行任务
        - DiscardPolicy 忽视，什么都不会发生
        - DiscardOldestPolicy 从队列中踢出最先进入队列（最后一个执行）的任务
    * 实现RejectedExecutionHandler接口，可自定义处理器


线程池执行任务的流程
1. 当线程数小于核心线程数时，创建线程。
2. 当线程数大于等于核心线程数，且任务队列未满时，将任务放入任务队列。
3. 当线程数大于等于核心线程数，且任务队列已满
    -1 若线程数小于最大线程数，创建线程
    -2 若线程数等于最大线程数，抛出异常，拒绝任务


设置线程池参数参考

切记不能设置为Integer.MAX_VALUE

corePoolSize：

    * =1
    * queueCapacity=Integer.MAX_VALUE
    * maxPoolSize=Integer.MAX_VALUE
    * keepAliveTime=60s
    * allowCoreThreadTimeout=false
    * rejectedExecutionHandler=AbortPolicy()


        

--------------------------------------------------------------------------------------------------

