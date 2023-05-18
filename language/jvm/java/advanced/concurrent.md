# 并发
> concurrent


- 并发的本质是访问共享资源
- 死锁:同步中嵌套同步,导致锁无法释放。

---




### 多线程并发的三个特性
- 操作原子性
- 内存可见性
- 指令有序性

- 指令重排不会影响单线程执行的结果，但会影响多线程并发执行结果的准确性，


---


### JMM线程操作内存基本规则：
- 第一条关于线程的本地内存与主内存：线程对共享变量的所有操作都必须在自己的本地内存中进行，不能直接从主内存中读写。
- 第二条关于线程间本地内存：不同线程无法直接访问其他线程本地内存中的变量，线程间变量值的传递需要经过主内存来完成。

- JMM定义了一套在多线程读写共享数据时，对共享数据的可见性，有序性，原子性的原则和保障。


---
## 线程间通讯

线程间通过共享数据来实现通信，通过同步互斥访问机制保证线程的安全性

- `volatile`
- `synchronized`
- `wait & notify`
- `ReentrantLock & Condition`
- `LockSupport`

- `ReentrantLock`
- `CyclicBarrier`
- 管道`PipedInputStream & PipedOutputStream`
- `BlockingQueue`

- `Thread.join()`
- `FutureTask`
- `Callable`

- 生产者消费者模型


---

## 线程调度

- 抢占式调度
- 协同式调度

- 先来先服务（FCFS）调度算法
- 短作业优先(SJF)调度算法

- 非抢占式优先权算法
- 抢占式优先权调度算法
- 高响应比优先调度算法

---
## CAS
> Compare And Swap
- 比较并交换

- JVM的CAS是使用CPU提供的CMPXCHG指令

- 使用锁机制和循环CAS实现原子操作
- CAS只能保证一个共享变量的原子操作
- 多个共享变量的原子操作可以使用锁机制



---


## AQS
> Abstract Queued Synchronizer
- 抽象队列式同步器
- 定义了一套多线程访问共享资源的同步器框架
- 乐观锁机制-锁自旋-非阻塞算法

- 同步器:Sync,FairSync, NonfairSync,Worker

- ReentrantLock
- Semaphore:信号量
- CountDownLatch:计数器
- CyclicBarrier:可重复使用的栅栏
- ThreadPoolExecutor

---
- 独占资源:只有一个线程能执行——ReentrantLock
- 共享资源:多个线程可同时执行——CountDownLatch


