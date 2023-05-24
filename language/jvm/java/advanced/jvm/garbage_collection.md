
# GC(Garbage Collection):垃圾回收

- 只对堆Heap进行垃圾回收，不对栈Stack进行垃圾回收

---


## 垃圾标记算法
1. 引用计数法
增加引用计数加一，引用失效计数减一，引用为零标记垃圾

2. 可达性算法
从GC Roots出发找不到Reference Chain的对象当作垃圾

Reference Chain 引用链

### GC Roots 对象:
- 虚拟机栈中(栈帧中的本地变量表)引用的对象
- 方法区中的类的静态属性引用的对象
- 方法区中的常量引用的对象
- 本地方法栈中JNI(java native interface)的引用的对象

### 并发漏标问题——读写屏障
- 增量更新(Incremental Update):CMS垃圾回收器采用

- 原始快照(Snapshot At The Beginning):G1垃圾回收器采用

---
## 颜色指针(Colored Pointer)
> CMS
- 64位=18位预留+1位Finalizable+1位Remapped+2位Marked+42位内存地址(支持2^42=4TB)

- 2位Marked在每个GC周期中轮换使用，这样可使前后两次标记不同，表示重置所有标记
- 颜色指针拥有自愈能力，只需一次读屏障，减少了写屏障使用

## 设置安全点区域
> 引用关系不会发生变化，GC时安全的
- 方法返回之前
- 调用方法之后
- 抛出异常时
- 循环结尾

---
## STW(Stop The World)
- 执行垃圾回收时，用户线程会暂停，
- 垃圾回收结束后，用户线程会恢复。
---

## 垃圾回收算法
- 标记-清除算法(Mark-Sweet)
清空标记可回收的空间，会造成内存碎片化严重

- 复制算法(Copy)
按照内存容量将内存划分为等大小的两块，每次只使用其中的一块，当这一块的内存满后就进行垃圾回收机制；
将尚存活的对象按顺序复制到另一块去，可回收的对象内存清清空，这一块内存就全部。现在使用另一块内存。

解决了内存碎片化问题，但是只能内存利用率最多只有一般，当存活对象过多要复制的对象也增多效率降低

- 标记-整理（压缩）算法(Mark-Compact)




---

## 分代回收算法

- Heap(堆)
    - New generation(新生代young)
    - Old generation(老年代tenured)。

- 新生代垃圾回收频率高，速度快；
- 老年代垃圾回收频率低，速度慢。


- New generation分为一个Eden区(伊甸园)、from Survivor和to Survivor(幸存区)。

- 两个Survivor是同个等级的，同一时间两个Survivor中有一个用来保存对象(from Survivor)
，而另一个是空的(to Survivor)，在下次的新生代GC中保存对象，关于from和to Survivor是动态的。

- 创建对象都放在Eden区，当Eden区满了之后会触发minor GC，将Eden区和from Survivor中存活对象转移到to Survivor，上述过程是循环的，此时from和to Survivor的名称进行对调。

- 如果Eden区和from Survivor中存活对象多于to Survivor，
- 那么当to Survivor满后多的对象直接转到Old generation，
- 如果Old generation空间还不够就会报out of memory异常。

- 当Survivor中存活对象每经历一次GC后还存在时其年龄就会加一，
- 当Survivor中年龄到达阀值的对象就会转移到Old generation，
- 默认阈值为15，最大阀值也是15，存放年龄空间只有4个字节
- `-XX:MaxTenuringThreshold=15`
New代对象在Survivor区经过15次GC之后才进入Old代，设置为0表示直接进入Old代


- 有可能还没到阈值就从survive直接转到Old generation
- 当对象大小超过设置的阀值gc后直接转到Old generation

- -XX:PretenureSizeThreshOld=1024k
New代对象大小超过1024k时GC之后就进入Old代，设置为0表示直接进入Old代

---

# minor GC & major GC & full GC

- 一般情况下当Old generation满了之后才会触发major GC。
New generation的GC称为minor GC，
Old generation的GC称为major GC，

- 当minor GC时Eden区和from Survivor的空间之和大于Old generation的剩余空间时会引发major GC。

### 三种垃圾回收现象:minor GC、major GC和full GC
- 对新生代New gen进行垃圾回收叫做minor GC，对老年代Old gen进行垃圾回收叫做major GC，
- full GC包括minor GC和之后触发的major GC，同时对新生代和老年代进行垃圾回收叫做full GC，



- 许多major GC是由minor GC触发的，所以很难将这两种垃圾回收现象分开，major GC和full GC通常是等价的。

- 对于jdk8之前，full GC还包括永久代的垃圾回收。
- JVM调优主要时针对full GC进行调优。

- 新生代中的Eden区和from Survivor使用复制算法进行垃圾回收minor GC，
- 老年代使用标记-清除和标记-整理算法进行垃圾回收major GC或full GC。

---


## 参数
```
禁用显示垃圾回收
-XX:DisableExplicitGC
// 显式垃圾回收
System.gc();
// full GC:新生代和老年代的垃圾回收

-Xx:-UseGCOverheadLimit
限制GC的运行时间。如果GC耗时过长，就抛OOM，默认开启

-verbose:gc             查看GC的详细信息

-XX:+PrintGC            打印GC的简要信息
-XX:+PrintGCDetails     打印GC的详细信息
-XX:+PrintGCTimeStamps  打印CG发生的时间戳
-XX:+PrintHeapAtGC      每次GC前后都打印堆信息
-Xloggc:log/gc.log      指定GC日志输出文件位置


-XX:+PrintGCApplicationConcurrentTime   打印每次垃圾回收前程序执行时间
    Application time: 0.5291524 seconds
-XX:+PrintGCApplicationStoppedTime      打印垃圾回收期间程序暂停的时间
    Total time for which application threads were stopped: 0.0468229 seconds

-XX:+PrintTenuringDistribution      在垃圾回收时打印Survivor区的对象的大小和年龄
    Desired Survivor size 163840 bytes, New threshold 1 (max 15)

```

---


---

---

