# 锁
> Lock


---
## 悲观锁
- 悲观并发控制(Pessimistic Concurrency Control)

- 操作数据时都会加锁，

- Java语言中的`synchronized`关键字

- `ReentrantLock`可重入锁，是悲观锁，是独占锁
- 传统的关系型数据库的行级锁，表级锁






---
## 乐观锁

- 读取数据时不加锁，只有修改数据时才加锁

- 乐观锁只能保证一个共享变量的原子操作。

- `ReadWriteLock`读写锁，是乐观锁，是共享锁



- 独占锁：只能被单线程持有的锁，shared
- 共享锁：可以被多线程持有的锁，exclusive


- CAS是乐观锁的实现