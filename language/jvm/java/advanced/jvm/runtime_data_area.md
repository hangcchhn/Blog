# JMM(Java Memory Model):Java内存模型

---

- 线程私有：PC Register, JVM Stack, Native Method Stack
- 线程共享：Heap、Method Area

---
## PC(Program Counter) Register
> 程序计数器(寄存器)
保存下一条要执行的指令的地址
当前线程正在执行的字节码文件中指令的行号
如果正在执行的是native方法，那么程序计数器的值为undefined
程序计数器是JVM中唯一不会出现OOM的区域


---
## JVM(Java Virtual Machine) Stack
> Java虚拟机栈(线程栈)
- 每个线程都有独立的内存空间，称栈(Stack)，由一个或多个栈帧(Stack Frame)组成
- 每个方法在执行的同时都会创建一个栈帧用于存储局部变量表、操作数栈、动态链接、方法返回值等信息
- 在线程中只有位于栈顶的帧才是有效的，称为当前栈帧，其对应的方法就是线程正在执行的，称为当前方法

- 栈中只保存基础数据类型的值和对象的引用。

- 基本类型变量区、执行环境上下文、存储操作指令区

---
## Native Method Stack
> 本地方法栈
- 本地方法：使用关键字`native`修饰的方法
- Java通过JNI调用C/C++语言实现的操作系统底层方法

- 在HotSpot虚拟机中将Java虚拟机栈和本地方法栈合并


---
## Heap
> 堆
- 通过new关键字创建的对象使用Heap堆内存
- 所有线程共享的
- 有线程安全问题
- 有垃圾回收机制

- 非静态成员变量在类的实例化时开辟空间并初始化，所以类的非静态成员变量也放在堆中。

- Heap=Young｜New + Tenure|Old
- Young｜New = Eden + Survivor * 2


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


---
## Method Area
> 方法区

- 堆存已实例化的对象，方法区存被加载过的类
###
- 类型信息：类class，接口interface，枚举enum，注解annotation
- 运行时常量池(Runtime Constant Pool)：字符串常量池(String Table:字符串表)
- 静态变量
- 即时编译代码缓存
- field
- method

---

- 方法区只是一个概念，在不同jdk版本中实现方式不一样

- jdk1.6:使用永久代(Permanent Generation)实现方法区，只针对HotSpot

- jdk1.7:将静态变量和字符串常量池存储在堆(Heap)中
    - 永久区初始大小-XX:PermSize=2g
    - 永久区最大大小-XX:MaxPermSize=4g


- jdk1.8:使用元空间(Matespace)取代永久代实现方法区(Method Area)，存储在本地内存(Native Memory)中，静态变量和字符串常量池存储在堆(Heap)中
    - 元空间初始大小-XX:MetaspaceSize=n
    - 元空间最大大小-XX:MaxMetaspaceSize=m

由于JVM内存大小限制，减少JVM内存空间压力，充分利用OS内存空间

由于永久代内存经常不够用或发生内存泄露，
解决Out of Memory Error:PermGen异常
堆和元空间连续空间方便垃圾回收


堆和方法区连在一起，但不能说堆和方法区是一起的
在逻辑上它们依旧是分开的，但在物理上来它们又是连续的一块内存。


