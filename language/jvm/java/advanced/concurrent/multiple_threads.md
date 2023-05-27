# 多线程


---
## Java内存模型
> JMM(Java Memory Model)

- JMM定义了一套在多线程读写共享数据时，对共享数据的可见性、有序性、原子性的原则和保障。

- 主内存：共享区域，包括堆和方法区
- 工作内存(Thread Local Memory)：私有区域，保存该线程需要的所有共享变量的副本


- 线程对共享变量的所有操作都必须在工作内存中进行
    - 先从主内存读取共享变量的值到自己的工作内存中
    - 所有操作完成后再将共享变量的值回写到主内存中
- 某个线程修改共享变量的值后，其他线程不能立即访问到修改后的值
    - 不同线程不能直接访问其他线程的工作内存
    - 线程间共享变量的值传递是通过主内存实现


- 内存屏障(Memory Barrier)：控制内存交互操作的顺序和可见性，load和store指令
    - LoadLoad
    - StoreStore
    - LoadStore
    - StoreLoad

---







---
## synchronized
> 同步的

- 可以保证同一时刻只有一个线程执行被修饰的方法或者代码块


- 编译成字节码后就是`monitor enter`和`monitor exit`两条指令

### JMM关于synchronized的两条规定：
- 线程解锁前（退出同步代码块时）：必须把自己工作内存中共享变量的最新值刷新
到主内存中

- 线程加锁时（进入同步代码块时）：将清空本地内存中共享变量的值，从而使用共
享变量时需要从主内存中重新读取最新的值（加锁与解锁是同一把锁）

- volatile是轻量级的synchronized同步

### synchronized使用

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


---
## volatile
> 易变的


- `volatile`禁止JVM指令重排序
- `volatile`不能保证原子性
- `volatile`使用内存屏障保证可见性

- 当对`volatile`变量进行写操作时，JVM会向处理器发送一条lock前缀的指令，将该变量的缓存数据刷新到内存
- 由于缓存一致性协议MESI，其他处理器通过嗅探在总线上传递的数据检查自身缓存是否过期，在操作该变量之前重新从内存中读取到缓存中


### 进程全局内存 & 线程工作内存
- 线程改变变量只会改变线程工作内存，不会改变进程全局内存，导致其他线程工作内存不变

- 调用`System.out.println()`使用了`synchronized`关键字会导致`volatile`关键字效果不明显








---
## 多线程间通讯

多线程间通过共享数据来实现通信，通过同步互斥访问机制保证线程的安全性

- `volatile`
- `synchronized`
- 等待通知机制：`wait|notify`
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