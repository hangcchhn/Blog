# Java对象

- 全限定名 = 包名 + 类名

- `java.lang.*`不用`import`




---


## Java Object
- 对象头(Object Header)
    - 标记字(Mark Word)：
    - 类指针(Klass Word)：对象指向所属 class 的元数据的指针
    - 数组对象必须包含长度信息(4bit)
- 实例数据(Instance Data)：
- 对齐填充(Padding)：保证对象大小是8字节的整数倍进行填充的长度



---
- 标记字Mark Word(64bit)
    - 分代年龄age
    - 偏向锁标志位biased_lock(1bit)
    - 锁标志位lock(2bit)
    - 对象的哈希码identity_hashcode(25bit)
    - 持有偏向锁的线程thread(54bit)
    - 时间戳epoch(25bit)
- 锁标识位表示对象的线程锁状态，共五类：无锁、偏向锁、轻量级锁、重量级锁、GC标记；占两位只能表示四个状态，将无锁和偏向锁表示为同一个状态。

| 锁状态 | -  | lock |
| :-: | :-: | :-: |
| 无锁 | unused(25bit)+identity_hashcode(25bit)+unused(25bit)+age(4bit)+0(1bit) | 01 |
| 偏向锁 | thread(54bit)+epoch(25bit)+unused(25bit)+age(4bit)+1(1bit) | 01 |
| 轻量级锁 | ptr_to_lock_record：指向线程栈中锁记录(Lock Record)的指针 | 00 |
| 重量级锁 | ptr_to_heavyweight_monitor：指向对象监视器(Monitor)的指针 | 10 |
| GC标记 | CMS过程中用到的标记信息 | 11 |


- 轻量级锁尝试在应用层面解决线程同步问题，而不触发操作系统的互斥操作，轻量级锁减少多线程进入互斥的几率，不能代替互斥。

- `+UseCompressedOops`开启压缩：类指针占4字节(32位)


- 本地线程分配缓存TLAB(Thread Local Allocation Buffer)：每个线程在堆中都预先分配一小块内存


