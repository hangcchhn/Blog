# 线程
> Thread

## 进程：程序执行
- 系统资源分配的基本单位
- 每个进程拥有独立的地址空间
- 进程间通讯：文件，套接字

### 线程
- 系统运算调度的基本单位
- 一个进程有一个或多个线程组成

### 守护线程

- 执行特殊任务
- 垃圾回收线程就是守护线程

- 当所有非守护线程退出后进程才会退出
- 创建线程设置守护线程`thread.setDaemon(true)`

### 线程实现
1. 继承`Thread`类
2. 实现`Runnable`接口（无返回值）
3. 实现`Callable`接口（有返回值）
    - `FutureTask`接口继承`Runnable`接口和`Future`接口


---


## 线程状态
> `java.lang.Thread.State`

- `NEW`：创建
- `RUNNABLE`：运行
- `BLOCKED`：阻塞
- `WAITING`：等待
- `TIMED_WAITING`：限时等待
- `TERMINATED`：终止



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

- `object.wait() & object.wait(long)`可被`object.notify() & object.notifyAll()`唤醒

- `object.wait()`方法调用前必须先获取object锁
- `object.wait()`方法执行完成后会释放object锁

- wait是`Object`类的`public`方法，所有对象都可以调用，只能在`synchronized`中使用，wait后必需与notify配合唤醒线程

- sleep是`Thread`类的`static`方法，任何地方都可以使用，sleep只是暂停当前线程但是不释放任何锁，休眠时间到就自动唤醒线程


- wait|notify:一定要在线程同步中使用,并且是同一个锁的获取和释放操作





---


- 不推荐使用`Thread.stop()`方法强行终止线程(已经被废弃)
- 使用`Thread.currentThread().isInterrupted()`方法获取中断标志
- 使用`thread.interrupt()`方法中断线程当前线程

---


- 在Java线程中，通过一个`int priority`来控制优先级，范围为1-10，其中10最高，默认值为5;优先级越高分配到的资源越多。


- 两个交替执行的线程合并为顺序执行的线程。比如在线程B中调用了线程A的join()方法，直到线程A执行完毕后，才会继续执行线程B。

- `Thread.yield()`方法：暂停当前正在执行的线程并执行其他线程（可能没有效果）。
- 大多数情况下，`yield()`将导致线程从运行状态转到可运行状态，但有可能没有效果。
- 实际中无法保证`yield()`达到让步的目的，让步的线程可能被线程调度程序再次选中。

---
## ThreadLocal

- ThreadLocal并不是用来解决多线程对共享资源访问的问题，因为每个线程中的共享资源只是副本，并不共享；因此ThreadLocal适合作为线程上下文变量，简化线程内传参。

- `ThreadLocal<T>`：存放线程私有数据
- `ThreadLocalMap`内部静态类：初始容量16，负载因子2/3
    - `Entry`内部静态类：`Entry`的`key`是一个`WeakReference`弱应用，当不存在外部强引用的时候，就会自动被回收，但是`Entry`的`value`依然是强引用。
        - `value`：Entry->ThreadLocalMap->Thread



- 拦截器的`postHandle()`方法要执行`ThreadContextHolder.destroy()`，即执行`ThreadLocal.remove()`

- `ThreadLocal.withInitial()`
- 不需要`ThreadLocal`变量时，需要主动调用`ThreadLocal.remove()`方法解决内存泄漏问题


---

## 线程调度


- Java线程的调度由操作系统来完成，采用抢占式线程调度方式。一个Java线程直接映射到操作系统的一个内核线程

### 操作系统的线程实现方式

- 内核线程
- 用户线程
- 混合实现：内核线程与用户线程并存

### 操作系统的线程调度方式
- 协同式线程调度：线程的执行时间由线程本身来控制，线程执行完任务后，需要主动通知操作系统切换到另外一个线程。
- 抢占式线程调度：由操作系统来为线程分配时间片（执行时间），将时间片分配给哪个线程也完全由操作系统决定。

- `Thread.yield()`方法是会导致线程上下文切换， 线程上下文切换会有资源和性能的开销
, 线程上下文切换会导致用户态与内核态的切换。

- `Thread.setPriority(int)`方法：设置线程的优先级，优先级越大的线程会有更大概率分配到时间片。


- 先来先服务（FCFS）调度算法
- 短作业优先(SJF)调度算法

- 非抢占式优先权算法
- 抢占式优先权调度算法
- 高响应比优先调度算法
