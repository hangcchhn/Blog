# 并发
> concurrent


- 并发的本质是访问共享资源
- 死锁:同步中嵌套同步,导致锁无法释放。

---




## 并发三个特性
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

## 线程调度

- 抢占式调度
- 协同式调度

- 先来先服务（FCFS）调度算法
- 短作业优先(SJF)调度算法

- 非抢占式优先权算法
- 抢占式优先权调度算法
- 高响应比优先调度算法



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


---
## CountDownLatch
> 计数器
```java
CountDownLatch countDownLatch = new CountDownLatch(count);
countdownLatch.countDown();// count--;
countdownLatch.await();// 当前线程等待，直到count=0当前线程会被唤醒
```

- `count=1`:多个线程同时执行
- `count=N`:某个线程要等待N个线程执行完毕才运行

---

## CyclicBarrier
> 可重复使用的栅栏

- 使一定数量线程在栅栏处等待，当所有线程都到了后执行
```java
CyclicBarrier cyclicBarrier = new CyclicBarrier(parties);
// 当线程到达栅栏后
CyclicBarrier cyclicBarrier = new CyclicBarrier(parties, Runnable);

cyclicBarrier.await()
```