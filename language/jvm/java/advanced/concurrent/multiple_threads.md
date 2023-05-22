# 多线程




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