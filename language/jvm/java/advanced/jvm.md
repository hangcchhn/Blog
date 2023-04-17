# JVM(Java Virtual Machine):Java虚拟机

---
- IBM J9 VM:绑定硬件,2019年开源Eclipse OpenJ9
- SUN HotSpot VM:2009年被Oracle收购
- BEA JRockit VM:2008年被Oracle收购
- Oracle在jdk8版本完成将JRockit整合到HotSpot
- JRockit最终版本R28，只支持到jdk6
- JRockit是即时编译器——JIT(Just In Time) Complier

---
## 一、Class Loaded Subsystem:类加载子系统
- 一、Loading:加载
    - 1.Bootstrap Class Loader:引导类加载器
    - 2.Extension Class Loader:扩展类加载器
    - 3.Application Class Loader:应用类加载器

- 二、Linking:连接
    - 1.Verify:验证
    - 2.Prepare:准备
    - 3.Resolve:解析

- 三、Initialization:初始化


---
## 二、Runtime Data Area:运行时数据区
[Java内存模型](jmm.md)


---
## 三、执行引擎

- JIT(Just-In-Time) Complier:即时编译器


- Interpreter:解释器


- GC(Garbage Collection):垃圾回收


---

-XX:+HeapDumpOnOutOfMemoryError
-XX:HeapDumpPath="filename.hprof"
当内存溢出时自动保存内存信息到filename.hprof文件



java.lang.OutOfMemoryError: Java heap space
创建对象太多导致堆中内存不足
解决办法:配置-Xmx参数


java.lang.StackOverFlowError
函数调用层次太深
递归调用
导致栈中的栈帧数量超过限制
解决办法:配置-Xss参数



---


虚拟机模式
32位支持客户端和服务端模式
64位只支持服务端模式


客户端模式-server
Java HotSpot(TM) Client VM


服务器模式-client
Java HotSpot(TM) 64-Bit Server VM

---




DriectByteBuffer

JVM Heap 堆
OS Memory 直接内存

零拷贝:
切换:用户态 <-> 核心态
复制数据:JVM Heap <-> OS Memory


---

# Complier

- C1
- C2

