# Java锁
> Lock

---

---
###  公平锁与非公平锁
- 公平锁表示获取锁依据先到先得原则
- `synchronized`是非公平锁；`Lock`默认是非公平锁，可设置为公平锁，公平锁会影响性能
---




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









