# Java锁
> Lock

---

---
###  公平锁与非公平锁
- 公平锁表示获取锁依据先到先得原则
- `synchronized`是非公平锁；`Lock`默认是非公平锁，可设置为公平锁，公平锁会影响性能
---



---
## CAS
> Compare And Swap
- 比较并交换：冲突检测

- CAS三个操作数：内存地址，预期原值和新值
- 只有当内存地址的值与预期原值一致时，才能将内存地址的的值更新为新值

- JVM的CAS是使用CPU提供的CMPXCHG指令

- 使用锁机制和循环CAS实现原子操作
- 多个共享变量的原子操作可以使用锁机制

- CAS只能保证一个共享变量的原子操作
- 自旋：不断的进行比较判断是否可以交换，不断循环时间长开销大


- CAS是无法解决ABA问题，内存地址的值是A，有个线程改成B，后来又改成A，CAS则认为内存地址没有被修改过。
- 解决ABA问题策略
    - 添加版本号
    - 添加时间戳
    - 悲观锁
    - 乐观锁


## 原子操作
>java1.5

- `java.util.concurrent.atomic`
- `AtomicReference`原子引用类：保证引用对象之间的原子性
- `AtomicStampedReference`类解决ABA问题
- `AtomicMarkableReference`类

- `AtomicInteger`类
    - `getAndIncrement`方法
    - `compareAndSwapInt`方法

- `AtomicIntegerArray`类
---

- `Lock`接口



## Lock

- 可重入锁`ReentrantLock`：
- 默认构造器是非公平锁，可以使用`new ReentrantLock(true)`创建公平锁
- 内部定义`Sync`同步器，`lock()`时将线程对象放在一个双向链表中，`unlock()`时

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









