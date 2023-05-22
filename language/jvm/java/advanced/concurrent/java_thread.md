# 线程
> Thread

## 进程：程序执行
- 系统资源分配的基本单位
- 每个进程拥有独立的地址空间
- 进程间通讯：文件，套接字

### 线程
- 系统运算调度的基本单位
- 一个进程有一个或多个线程组成

### 线程实现
1. 继承Thread类
2. 实现Runnable接口（无返回值）
3. 实现Callable接口（有返回值，返回值是Future接口）


---


## 线程状态
> `java.lang.Thread.State`

- NEW:创建
- RUNNABLE:运行
- BLOCKED:阻塞
- WAITING:等待
- TIMED_WAITING:限时等待
- TERMINATED:终止



| STATUS | FROM | TO |
| - | - | - |
| new Thread() | - | NEW |
| Thread.start() | NEW | RUNNABLE |
| Thread.sleep(Long) | RUNNABLE | TIMED_WAITING |
| Thread.join()<br>Thread.join(Long) | RUNNABLE | WAITING|TIMED_WAITING |
| synchronized | RUNNABLE | BLOCKED |
| Object.wait()<br>Object.wait(Long) | RUNNABLE<br>WAITING|TIMED_WAITING |
| Object.notify()<br>Object.notifyAll() | WAITING<br>TIMED_WAITING | RUNNABLE |
| LockSupport.park() | RUNNABLE | WAITING |
| LockSupport.parkNanos()<br>LockSupport.parkUntil() | RUNNABLE | TIMED_WAITING |
| LockSupport.unpark(Thread) | TIMED_WAITING | RUNNABLE  |

---
## Thread.sleep(long) & object.wait() & object.wait(long)

- object.wait() & object.wait(long) 可以被 object.notify() & object.notifyAll() 唤醒

- object.wait()方法调用必须先获取object锁，执行完object.wait()方法后会释放object锁

- wait是Object的public方法，所有class都可以调用，只能在synchronized{}中使用，wait后必需与notify配合唤醒线程

- sleep是Thread类的static方法，任何地方都可以使用，sleep只是暂停当前线程但是不释放任何锁，休眠时间到就自动唤醒线程


- wait|notify:一定要在线程同步中使用,并且是同一个锁的获取和释放操作





---


- 不推荐使用Thread.stop()方法强行终止线程(已经被废弃)
- 使用Thread.currentThread().isInterrupted()方法获取中断标志
- 使用thread.interrupt()方法中断线程使用thread

---


- 在JAVA线程中，通过一个int priority来控制优先级，范围为1-10，其中10最高，默认值为5。优先级越高分配到的资源越多。


- 两个交替执行的线程合并为顺序执行的线程。比如在线程B中调用了线程A的Join()方法，直到线程A执行完毕后，才会继续执行线程B。

- `Thread.yield()`方法：暂停当前正在执行的线程并执行其他线程（可能没有效果）。
大多数情况下，yield()将导致线程从运行状态转到可运行状态，但有可能没有效果。
实际中无法保证yield()达到让步的目的，让步的线程可能被线程调度程序再次选中。

---
## ThreadLocal：存放线程私有数据

- ThreadLocalMap，初始容量16，负载因子2/3



---


## 线程安全

减小锁粒度是指缩小锁定对象的范围，从而减小锁冲突的可能性，从而提高系统的并发能力。
减小锁粒度是一种削弱多线程锁竞争的有效手段。

如果我们对整个 HashMap 加锁，可以得到线程安全的对象，但是加锁粒度太大。
Segment 的大小也被称为 ConcurrentHashMap 的并发度。


默认情况下一个 ConcurrentHashMap 被进一步细分为 16 个段 Segment，就是锁的并发度

ConcurrentHashMap 是由 Segment 数组结构和 HashEntry 数组结构组成，
Segment 是一种可重入锁 ReentrantLock，
HashEntry 用于存储键值对数据。

每个 Segment 守护一个 HashEntry 数组里的元素,
当对 HashEntry 数组的数据进行修改时，
必须首先获得它对应的 Segment 锁。



