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
## 多线程间通讯

多线程间通过共享数据来实现通信，通过同步互斥访问机制保证线程的安全性

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