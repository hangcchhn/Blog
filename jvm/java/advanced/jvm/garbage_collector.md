# 垃圾回收器

- 串行回收器:单线程

- 并行回收器:多线程

- 并发回收器

---
1.吞吐量优先的并行回收器
| 参数 | 说明 |
| :- | :- |
| -XX:+UseParallelGC | 设置新生代并行回收器 |
| -XX:+UseParalledlOldGC | 设置老年代并行回收器 |
| -XX:ParallelGCThreads=n | 设置新生代并行回收器最大的线程数n |
| -XX:MaxGCPauseMillis=n | 设置新生代并行回收器最大间隔时间n |
| -XX:+UseAdaptiveSizePolicy | 自适应调节策略:自动选择新生代和相应的Survivor区大小比例 |



2.响应时间优先的并发回收器

| 参数 | 说明 |
| :- | :- |
| -XX:+UseParNewGC | 设置新生代并行回收器 |
| -XX:+UseConcMarkSweepGC | 设置年老代并发回收器 |
| -XX:CMSFullGCsBeforeCompaction=n | 设置运行n次fullGC以后对内存空间进行压缩 |
| -XX:+UseCMSCompactAtFullCollection | 启动对fullGC之后内存空间进行压缩 |


---
## Serial垃圾回收器
- 体现Stop the World特点(进行垃圾回收时，必须暂停所有其他线程)

- 新生代使用：客户端模式下默认
- 采用复制算法
- 并行回收
- 单线程
- `-XX:+UseSerialGC`

---
## ParNew垃圾回收器

- 多线程版Serial垃圾回收器

- `-XX:+UseParNewGC`
- `-XX:ParallelGCThreads=2`:指定线程数，默认与CPU核数相同


---
## Parallel Scavenge垃圾回收器
- 新生代使用：服务端模式下默认
- 采用复制算法
- 并行回收

- 适用于多后台运算而少交互中断的程序，充分利用CPU时间尽快完成CPU计算
- 吞吐量=用户代码运行时间/CPU总消耗时间=用户代码运行时间/(用户代码运行时间+垃圾回收时间)


- `-XX:MaxGCPauseMillis`
- `-XX:GCTimeRatio`
- `-XX:+UseAdptiveSizePolicy`:自适应调节策略
---
## Serial Old
- 老年代使用：客户端模式下默认
- 采用标记-整理算法
- 串行回收

---
## Parallel Old
- 老年代使用：服务端模式下默认
- 采用标记-整理算法
- 并行回收
- 与Parallel Scavenge配合使用

- `-XX:+UseParallelGC`
- `-XX:+UseParallelOldGC`
---
## CMS(Concurrent Mark Sweep)
- 老年代使用
- 采用标记-整理算法
- **并发**回收

- 以获取最短垃圾回收停顿时间为目的注重响应速度
- 出现Concurrent Mode Failure时使用Serial Old垃圾回收器

### 过程
- 初始标记：仅标记GC Roots能直接关联的对象，速度快
- 并发标记
- 重新标记：修正并发标记期间用户线程运行导致标记变动记录，
- 并发清理
- 并发重置
### 缺点

- 无法处理浮动垃圾
- 产生大量空间碎片

- `-XX:+UseConcuMarkSweepGC`:新生代默认使用ParNew垃圾回收器
- `-XX:CMSInitiatingOccupancyFraction=`:启动占用比例，解决Concurrent Mode Failure问题
- `-XX:+UseCMSCompactAtFullCollection`:在full GC时启动
- `-XX:CMSFullGCsBeforeCompaction=`:在Compact前full GC次数

---
## G1(Garbage First)

- 堆使用：服务端模式
- 采用标记-整理算法
- 并行回收
- mixed GC:新生代和老年代混合垃圾回收
- 充分利用多CPU，多核的硬件优势

- 将整个Heap分成2048个大小相同的Region，被标记为E(Eden),S(Survivor),O(Old),H(Humongous)
    - Humongous Region用于存放大对象（超过Region区域50%）
- `-XX:+UseG1GC`
- `-XX:G1HeapRegionSize=1M`:指定Region区域大小
- `-XX:G1MaxNewSizePercent=60%`:新生代最大占比
- `-XX:MaxGCPauseMills=200`:最大GC停顿时间
- `-XX:InitiatingHeapOccupancyPercent`:触发mixed GC阈值

### 过程
- 初始标记：仅标记GC Roots能直接关联的对象，速度快
- 并发标记：可达性分析标记所有被引用的对象，耗时较长
- 最终标记：原始快照(Snapshot At The Beginning,SATB)算法
- 筛选回收：复制(Copy)算法
---
## ZGC(Z Garbage Collection)
- jdk11
- 采用标记-整理算法
- 以Region进行内存布局，使用了读屏障、染色指针和内存多重映射
- Region区域分为小型（容量2MB，存放小于256KB的对象）、中型（容量4MB，存放大于等于256KB且小于4MB的对象）和大型（容量可变，但必须是2的倍数，存放大于4MB的对象）。

- UMA(Uniform Memory Access Architecture):统一内存访问体系结构，多核CPU因竞争激烈导致效率问题，NUMA使得每个CPU核心优先访问指定区域

### 运作过程
- 初始标记，并发标记，最终标记
- 并发预备重分配
- 初始重分配，并发重分配：
- 并发重映射

## 触发机制
- 定时触发：默认关闭
- 预热触发：最大三次
- 分配触发：
- 主动触发：默认开启