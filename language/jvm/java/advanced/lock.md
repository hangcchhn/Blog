

## synchronized
> 可以保证同一时刻只有一个线程执行被修饰的方法或者代码块

- 还可以保证共享变量的内存可见性
- 代码重排序也不会影响其执行结果

- synchronized：编译成字节码后就是monitor enter和monitor exit两条指令

```java
//锁定变量
synchronized(this) {
    //代码块
}

//锁定对象
public synchronized Object method(Object object) {
    //方法
}

//锁定类
public static synchronized Object method(Object object) {
    //静态方法
}
```

### JMM关于synchronized的两条规定：
- 线程解锁前（退出同步代码块时）：必须把自己工作内存中共享变量的最新值刷新
到主内存中

- 线程加锁时（进入同步代码块时）：将清空本地内存中共享变量的值，从而使用共
享变量时需要从主内存中重新读取最新的值（加锁与解锁是同一把锁）

- volatile是轻量级的synchronized同步

---
## volatile

- 可以保证内存可见性
- 可以保证指令有序性
- 无法保证操作原子性

### 进程全局内存 & 线程工作内存
- 线程改变变量只会改变线程工作内存，不会改变进程全局内存，导致其他线程工作内存不变

- 调用`System.out.println()`使用了`synchronized`关键字会导致`volatile`关键字效果不明显








---





## Lock

- 可重入锁:ReentrantLock
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

## 乐观锁 & 悲观锁



---

- 可重入锁表示同一线程可重复获取锁
- 公平锁表示获取锁依据先到先得原则





