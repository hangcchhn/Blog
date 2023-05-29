# 并发
> concurrent


- 并发的本质是访问共享资源


---




## 并发的三个特性
- 内存可见性：某个线程对共享变量的修改，其他个线程能够立刻读取
- 操作原子性：一个或者多个操作在CPU执行的过程中不能被中断
- 指令有序性：重排序分为编译器重排序和处理器重排序

- 指令重排序不会影响单线程执行的结果，但会影响多线程并发执行结果的准确性，
- JSR-133


- happens-before：前面一个操作的结果对后续操作是可见的

- as-if-serial


---








---


## AQS
> Abstract Queued Synchronizer
- 抽象队列式同步器：定义了一套多线程访问共享资源的同步器框架
- `AbstractQueuedSynchronizer`类使用一个`volatile`修饰的`int`类型的成员变量state来表示同步状态，通过CAS完成对state值的修改。
- 同步器同步器线程申请锁时：
    - state等于0表示没有任何线程占用共享资源，当前线程可以获得锁并将state改成1；
    - state等于1表示其他线程正在使用共享资源，当前线程加入同步队列等待。
- 同步器依赖内部的同步队列来完成同步状态的管理：一个先进先出的双向队列(CLH)，每个节点会根据是否为共享锁标记状态为共享或独占模式，
- `Node`节点
    - `waitStatus`等待状态
    - `thread`线程引用
    - `nextWaiter`
- 独占锁和共享锁都是以非公平策略获取锁的
- 申请锁失败后，`addWaiter`方法将当前线程封装成`Node`节点，从tail节点插入同步队列，如果队列为空，会先添加一个空的head节点，再使用CAS方式处理添加节点冲突；最后使用`selfInterrupt`方法中断当前线程
- 释放锁成功后，从`head`节点开始唤醒其`next`节点，如后继节点被取消，则转为从`tail`节点开始唤醒其`prev`节点。
- 共享锁释放成功后，除了唤醒头部阻塞节点，还会通过`setHeadAndPropagate`方法唤醒其后续节点，其中传播参数`propagate`表示存在多少个后续节点需要被唤醒

```java
tryAcquire(int);        // 尝试获取独占锁，可获取返回true，否则false
tryRelease(int);        // 尝试释放独占锁，可释放返回true，否则false
tryAcquireShared(int);  // 尝试以共享方式获取锁，失败返回负数，只能获取一次返回0，否则返回正数
tryReleaseShared(int);  // 尝试释放共享锁，可获取返回true，否则false
isHeldExclusively();    // 判断线程是否独占资源
```


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
- `CountDownLatch`只能使用一次
- 用于某个线程等待其他线程执行完任务再执行
```java
CountDownLatch countDownLatch = new CountDownLatch(count);
countdownLatch.countDown();// count--;
countdownLatch.await();// 当前线程等待，直到count=0当前线程会被唤醒
```

- `count=1`:多个线程同时执行
- `count=N`:某个线程要等待N个线程执行完毕才运行

---

## CyclicBarrier

- 可重复使用的栅栏：使一定数量线程在栅栏处等待，当所有线程都到了后执行
- 用于一组线程互相等待到某个状态，然后这组线程再同时执行。
-
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
- 用于控制同时访问特定资源的线程数量，控制并发线程数。

```java
semaphore.acquire() // 获取
semaphore.release() // 归还
```

- 内部静态类
    - 终态静态类`FairSync `和`NonfairSync`类继承`Sync`类
- 信号量提供公平和非公平两种工作模式


---


