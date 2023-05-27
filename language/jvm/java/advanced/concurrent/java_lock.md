

---
## 乐观锁 & 悲观锁

1. 悲观锁，是数据对外界的修改采取保守策略，它认为线程很容易把数据修改掉，因此在整个数据被修改的过程中都会采取锁定状态，直到一个线程使用完，其他线程才可以继续使用，
    典型应用是 synchronized 关键字；
2.乐观锁，和悲观锁的概念恰好相反，乐观锁认为一般情况下数据在访问时不会出现冲突，所以在数据访问之前不会加锁，只是在数据提交更改时，才会对数据进行检测，
    典型应用是 ReadWriteLock 读写锁；
3. 可重入锁，也叫递归锁，指的是同一个线程在外面的函数获取了锁之后，那么内层的函数也可以继续获得此锁，
    在 Java 语言中 ReentrantLock 和 synchronized 都是可重入锁；
4. 独占锁和共享锁，只能被单线程持有的锁叫做独占锁，可以被多线程持有的锁叫共享锁，独占锁指的是在任何时候最多只能有一个线程持有该锁，
    比如 ReentrantLock 就是独占锁；而 ReadWriteLock 读写锁允许同一时间内有多个线程进行读操作，它就属于共享锁。

---
- 悲观锁：悲观并发控制(Pessimistic Concurrency Control)传统的关系型数据库的行级锁，表级锁等
    1. 共享锁又称为读锁:shared locks
    2. 排他锁又称为写锁exclusive locks

- 乐观锁：java语言中java.util.concurrent.atomic包下的类使用比较并交换CAS(Compare and Swap)实现
    - 乐观锁实现步骤：冲突检测和数据更新
    - CAS三个操作数：内存地址，预期原值和修改新值
    - 只有当内存地址的实际值与预期值一致时才能对内存地址更新值


---
###  公平锁与非公平锁
- 公平锁表示获取锁依据先到先得原则
- `synchronized`是非公平锁；`Lock`默认是非公平锁，可设置为公平锁，公平锁会影响性能
---



---
## CAS
> Compare And Swap
- 比较并交换

- 自旋：不断的进行比较判断是否可以交换

- JVM的CAS是使用CPU提供的CMPXCHG指令

- 使用锁机制和循环CAS实现原子操作
- CAS只能保证一个共享变量的原子操作
- 多个共享变量的原子操作可以使用锁机制




---





## Lock

- 可重入锁`ReentrantLock`
    - 默认构造器是非公平锁，可以使用`new ReentrantLock(true)`创建公平锁


```java

Lock lock = new ReentrantLock();
try {
    // 获取锁
    lock.lock();
} catch(Exception exception) {

} finally {
    // 释放锁
    lock.unlock();
}

```



- 可重入锁：同一线程可以多次获得同一个锁
- 保证了线程的互斥性和内存的可见性

- `Lock`需要显式获得和释放锁

---
## `ReentrantLock & Condition`

- 多条件锁




```java
ReentrantLock.lock()
Condition.await()/signal()
ReentrantLock.unlock()
```

## ReentrantReadWriteLock
> 读写锁
- 允许同一时刻多个读线程访问，但是写线程和其他线程均被阻塞。




---









