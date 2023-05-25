# 并发
> concurrent


- 并发的本质是访问共享资源
- 死锁:同步中嵌套同步,导致锁无法释放。

---




## 并发三个特性
- 内存可见性：某个线程对共享变量的修改，其他个线程能够立刻读取
- 操作原子性：一个或者多个操作在CPU执行的过程中不能被中断
- 指令有序性：JVM具有指令重排优化功能

- 指令重排不会影响单线程执行的结果，但会影响多线程并发执行结果的准确性，

- `volatile`可以保证可见性，可以禁止JVM指令重排，保证有序性
- `synchronized`可以保证可见性和原子性

### happens-before order
- 前面一个操作的结果对后续操作是可见的

---







---


## AQS
> Abstract Queued Synchronizer
- 抽象队列式同步器：定义了一套多线程访问共享资源的同步器框架
- 使用一个`volatile`修饰的`int`类型的成员变量State来表示同步状态,通过CAS完成对State值的修改。


-
- 乐观锁-自旋锁-非阻塞算法

- 同步器:Sync,FairSync,NonfairSync,Worker

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
cyclicBarrier.reset()
```

- `reakBarrier()`方法
- `nextGeneration()`方法

---

## Semaphore
> 信号量

```java
semaphore.acquire() // 获取
semaphore.release() // 归还
```

- 内部静态类
    - 终态静态类`FairSync `和`NonfairSync`类继承`Sync`类
- 信号量提供公平和非公平两种工作模式


---

## atomic
> java.util.concurrent.atomic
- java1.5原子操作

- 自旋锁+CAS
- `AtomicInteger`

