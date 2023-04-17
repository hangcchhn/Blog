# 并发
> concurrent

- 并发
- 并行



---




### 多线程并发的特性（三个）
- 操作原子性
- 内存可见性
- 指令有序性

指令重排不会影响单个线程的结果，
但会影响多线程并发执行的准确性，

多线程之间通过共享内存进行通信。

多线程死锁:同步中嵌套同步,导致锁无法释放。

---


### Java Memory Model线程操作内存基本规则：
- 第一条关于线程的本地内存与主内存：线程对共享变量的所有操作都必须在自己的本地内存中进行，不能直接从主内存中读写。
- 第二条关于线程间本地内存：不同线程无法直接访问其他线程本地内存中的变量，线程间变量值的传递需要经过主内存来完成。

- Java内存结构，和Java虚拟机的运行时区域有关。
- Java对象模型，和Java对象在虚拟机中的表现形式有关。
- Java内存模型，和Java的并发编程有关。

JMM定义了一套在多线程读写共享数据时，对共享数据的可见性，有序性，原子性的原则和保障。








---




## 线程调度：
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
## 乐观锁机制-锁自旋-非阻塞算法
> jdk1.5:java.util.concurrent.atomic


- ABS(Abstract Queued Synchronizer):抽象的队列式的同步器
定义了一套多线程访问共享资源的同步器框架
同步器的实现是 ABS 核心（state 资源状态计数）


ReentrantLock/Semaphore/CountDownLatch
独占资源:只有一个线程能执行 ReentrantLock
共享资源:多个线程可同时执行 CountDownLatch



1．isHeldExclusively()：该线程是否正在独占资源。只有用到 condition 才需要去实现它。
2．tryAcquire(int)：独占方式。尝试获取资源，成功则返回 true，失败则返回 false。
3．tryRelease(int)：独占方式。尝试释放资源，成功则返回 true，失败则返回 false。
4．tryAcquireShared(int)：共享方式。尝试获取资源。负数表示失败；0 表示成功，但没有剩余可用资源；正数表示成功，且有剩余资源。
5．tryReleaseShared(int)：共享方式。尝试释放资源，如果释放后允许唤醒后续等待结点返回true，否则返回 false。

