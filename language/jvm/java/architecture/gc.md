
# GC(Garbage Collection):垃圾回收

只对堆进行垃圾回收，不对栈进行垃圾回收

线程内部的栈

---


## 垃圾标记算法
1. 引用计数法
增加引用计数加一，引用失效计数减一，引用为零标记垃圾

2. 可达性算法
从GC Roots出发找不到Reference Chain的对象当作垃圾

Reference Chain 引用链

### GC Roots 对象:
1. 虚拟机栈中(栈帧中的本地变量表)引用的对象
2. 方法区中的类的静态属性引用的对象
3. 方法区中的常量引用的对象
4. 本地方法栈中JNI(java native interface)的引用的对象


---

## 垃圾回收算法
1. 标记-清除算法(Mark-Sweet)
清空标记可回收的空间，会造成内存碎片化严重

2. 复制算法(Copy)
按照内存容量将内存划分为等大小的两块，每次只使用其中的一块，当这一块的内存满后就进行垃圾回收机制；
将尚存活的对象按顺序复制到另一块去，可回收的对象内存清清空，这一块内存就全部。现在使用另一块内存。

解决了内存碎片化问题，但是只能内存利用率最多只有一般，当存活对象过多要复制的对象也增多效率降低

3. 标记-整理算法(Mark-Compact)


---

## 分代回收算法

- heap(堆)
    - new generation(新生代young)
    - old generation(老年代tenured)。

新生代垃圾回收频率高，速度快；
老年代垃圾回收频率低，速度慢。

---
new generation分为一个eden区(伊甸园)、from survivor和to survivor(幸存区)。

注意:两个survivor是同个等级的，同一时间两个survivor中有一个用来保存对象(from survivor)
而另一个是空的(to survivor)，在下次的新生代GC中保存对象，关于from和to survivor是动态的。

创建对象都放在eden区，当eden区满了之后会触发minor GC，
将eden区和from survivor中存活对象转移到to survivor，

上述过程是循环的，此时from和to survivor的名称进行对调。

如果eden区和from survivor中存活对象多于to survivor，
那么当to survivor满后多的对象直接转到old generation，
如果old generation空间还不够就会报out of memory异常。

当survivor中存活对象每经历一次GC后还存在时其年龄就会加一，
当survivor中年龄到达阀值的对象就会转移到old generation，
默认阈值为15，最大阀值也是15，存放年龄空间只有4个字节


---
-XX:MaxTenuringThreshold=10
New代对象在Survivor区经过10次GC之后才进入Old代
设置为0表示直接进入Old代


有可能还没到阈值就从survive直接转到Old generation
当对象大小超过设置的阀值gc后直接转到Old generation

-XX:PretenureSizeThreshold=1024k
New代对象大小超过1024k时GC之后就进入Old代
默认为0表示直接进入Old代

---
一般情况下当old generation满了之后才会触发major GC。
new generation的GC称为minor GC，
old generation的GC称为major GC，
当minor GC时eden区和from survivor的空间之和,
大于old generation的剩余空间时会引发major GC。

三种垃圾回收现象:minor GC、major GC和full GC
对新生代new gen进行垃圾回收叫做minor GC，
对老年代old gen进行垃圾回收叫做major GC，
full GC包括minor GC和之后触发的major GC，
同时对新生代和老年代进行垃圾回收叫做full GC，
对于jdk8之前，full GC还包括永生代的垃圾回收。


许多major GC是由minor GC触发的，
所以很难将这两种垃圾回收现象分开，
major GC和full GC通常是等价的。

---
STW(Stop The World)
执行垃圾回收时，用户线程会暂停，
垃圾回收结束后，用户线程会恢复。


新生代中的eden区和from survive使用复制算法进行垃圾回收minor GC，
老年代使用标记-清除和标记-整理算法进行垃圾回收major GC或full GC。

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
    Desired survivor size 163840 bytes, new threshold 1 (max 15)

```

---

```
-XX:GCTimeRatio=n           设置垃圾回收时间占程序运行时间的百分比
-XX:ParallelGCThreads=n     设置并行收集器收集线程数
-XX:MaxGCPauseMillis=n      设置并行收集最大暂停时间



-XX:+UseSerialGC        设置串行收集


1.吞吐量优先的并行收集器
-XX:+UseParallelGC          设置年轻代并行收集器
-XX:ParallelGCThreads=n     设置年轻代并行收集器最大的线程数
-XX:MaxGCPauseMillis=n      设置年轻代并行收集器最大间隔时间


-XX:+UseParalledlOldGC      设置老年代为并行收集

-XX:+UseAdaptiveSizePolicy  自适应策略:自动选择年轻代和相应的Survivor区大小比例


2.响应时间优先的并发收集器

-XX:+UseParNewGC            设置年轻代为并行收集
-XX:+UseConcMarkSweepGC     设置年老代为并发收集

-XX:CMSFullGCsBeforeCompaction=5        设置运行n次GC以后对内存空间进行压缩
-XX:+UseCMSCompactAtFullCollection      打开对年老代GC之后内存空间进行压缩
```
---


## 垃圾回收器
1. 串行收集器:单线程收集器



2. 并行收集器:多线程收集器



3. 并发收集器


---


- Serial收集器:体现Stop the World特点(进行垃圾回收时，必须暂停所有其他线程)


- PartNew收集器:支持并行收集，使用-XX:+UseParNewGC指定PartNew进行垃圾回收。



- Parallel Scavenge:
    - 新生代收集器使用复制算法的多线程并行收集器，
    注重可控的吞肚量，使用-XX:MaxCcPauseMillis和-XX:GCTimeRatio控制吞吐量，
    适用于多后台运算而少交互中断的程序，充分利用CPU时间尽快完成CPU计算
    吞吐量=用户代码运行时间/CPU总消耗时间=用户代码运行时间/(用户代码运行时间+垃圾回收时间)
    - 老年代收集器使用标记-整理算法的多线程并行收集器，jdk1.6才开始提供

- CMS(Concurrent Mar Sweep)并发收集器:
    使用标记-整理算法的多线程并行收集，以获取最短垃圾回收停顿时间为目的注重响应速度
    CMS回收步骤:
    1.初始标记(Stop the World)
    2.并发标记
    3.重新标记(Stop the World)
    4.并发清除

- G1(Garbage First)收集器:最新的收集器，在jdk1.6u14提供
    使用标记-整理算法的多线程并行收集