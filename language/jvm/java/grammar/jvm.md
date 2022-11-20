
---

- IBM J9 VM 绑定硬件  2019年开源  Eclipse OpenJ9
- SUN HotSpot VM 2009年被oracle收购
- BEA JRockit VM 2008年被oracle收购
- oracle在jdk8版本完成将JRockit整合到HotSpot
- JRockit最终版本R28，只支持到jdk6
- JRockit是即时编译器——JIT(Just In Time) Complier
---

## Class Loaded Subsystem:类加载子系统
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

JVM(Java Virtual Machine):Java虚拟机
Runtime Data Area:运行时数据区
Java Memory Model:内存模型(JMM)


---

## 线程私有:PC Register, JVM Stack, Native Method Stack

### PC(Program Counter) Register:程序计数器(寄存器)
保存下一条要执行的指令的地址
当前线程正在执行的字节码文件中指令的行号
如果正在执行的是native方法，那么程序计数器的值为undefined
程序计数器是JVM中唯一不会出现OOM的区域



### JVM(Java Virtual Machine) Stack:Java虚拟机栈(线程栈)
俗称栈(Stack):有一个或多个栈帧(Stack Frame)组成
每个方法在执行的同时都会创建一个栈帧用于存储局部变量表、操作数栈、动态链接、方法返回值等信息
在线程中只有位于栈顶的帧才是有效的，称为当前栈帧，其对应的方法就是线程正在执行的，称为当前方法

栈中只保存基础数据类型的值和对象的引用。

基本类型变量区、执行环境上下文、存储操作指令区


### Native Method Stack:本地方法栈
使用C/C++语言实现的操作系统底层方法
本地方法使用关键字native修饰的方法


---

## 线程共享:Heap和Method Area

### Heap:堆
通过new关键字创建的对象使用Heap堆内存
所有线程共享的
有线程安全问题
有垃圾回收机制

非静态成员变量在类的实例化时开辟空间并初始化，所以类的非静态成员变量也放在堆中。

Heap=Young｜New + Tenure|Old
Young｜New = Eden + Survivor


堆初始大小-Xms256m
堆最大大小-Xmx1g
-XX:MaxHeapSize=n

新生代最大大小-Xmn512m

新生代最大大小
-XX:MaxNewSize=n
新生代初始大小
-XX:NewSize=n

线程栈最大大小-Xss128m

Edem:From｜To Survivor=8:1
参数–XX:SurvivorRatio=8设置
两个Survivorr区的大小是相同的

默认Old代:New代=2:1
参数-XX:NewRatio=2



### Method Area:方法区
方法区只是一个概念，在不同jdk版本中实现方式不一样

- jdk1.6:使用永久代实现方法区

- jdk1.7:将静态变量和字符串常量池(String Table——字符串表)移入堆中
    - 永久区初始大小-XX:PermSize=2g
    - 永久区最大大小-XX:MaxPermSize=4g


- jdk1.8:使用元空间(Matespace)取代永久代实现方法区(Method Area)，存储在本地内存(Native Memory)中
    - 元空间初始大小-XX:MetaspaceSize=n
    - 元空间最大大小-XX:MaxMetaspaceSize=m

由于JVM内存大小限制，减少JVM内存空间压力，充分利用OS内存空间

由于永久代内存经常不够用或发生内存泄露，
解决Out of Memory Error:PermGen异常
堆和元空间连续空间方便垃圾回收


堆和方法区连在一起，但不能说堆和方法区是一起的
在逻辑上它们依旧是分开的，但在物理上来它们又是连续的一块内存。


---
## 执行引擎

- JIT(Just In Time) Complier:即时编译器


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


