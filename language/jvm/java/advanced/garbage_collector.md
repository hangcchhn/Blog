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

- `-XX:+UseSerialGC`

---
## PartNew垃圾回收器

- 多线程版Serial垃圾回收器

- `-XX:+UseParNewGC`
- `-XX:ParallelGCThreads=2`:指定线程数

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

- 将整个Heap分成大小相同的Region，被标记为E(Eden),S(Survivor),O(Old),H(Humongous)
- `-XX:+UseG1GC`
- `-XX:MaxGCPauseMills=200`:最大GC停顿时间
- `-XX:G1HeapRegionSize=1M`:指定Region大小
- `-XX:InitiatingHeapOccupancyPercent`:触发mixed GC阈值

---
## ZGC(Z Garbage Collection)
- jdk11
- 基于Region内存布局，使用了读屏障、染色指针和内存多重映射
- 采用标记-整理算法