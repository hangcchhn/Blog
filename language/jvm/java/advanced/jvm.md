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
### 1.Loading:加载

- Bootstrap Class Loader:引导类加载器，加载$JAVA_HOME/lib/rt.jar包里的运行时类(java.util.*, java.lang.*, java.io.*, java.nio.*, ...)


- Extension Class Loader:扩展类加载器，加载$JAVA_HOME/lib/ext/*.jar包里的拓展类(javax.*)
- Application Class Loader:应用类加载器，加载classpath下的jar包和class字节码，

- 双亲委派：应用类加载器将工作委派给引导类加载器和扩展类加载器
```java
public abstract class ClassLoader {
    private final ClassLoader parent;
}
```

- ExtClassLoader的parent是null，表示parent是Bootstrap Class Loader
- AppClassLoader的parent是ExtClassLoader
- 加载类流程是AppClassLoader将要加载的类先委派的parent，即ExtClassLoader，如果ExtClassLoader不可以加载，AppClassLoader再去classpath下检索；ExtClassLoader将要加载的类先委派的parent。即引导类加载器，如果引导类加载器不可以加载，ExtClassLoader再去$JAVA_HOME/lib/ext/*.jar包里检索


---

- `sun.misc.Launcher`
    - 静态内部类`AppClassLoader`和`ExtClassLoader`都继承`URLClassLoader`类
```java
Class<?> forName(String className)
Class<?> forName(String name, boolean initialize, ClassLoader loader)


```


- `ClassLoader.getSystemClassLoader()`


- `URLClassLoader`类可以加载本地和远程类


- `Thread.currentThread().getContextClassLoader()`:线程上下文类加载器
ContextClassLoader从父线程继承而来，main线程以AppClassLoader作为ContextClassLoader，所有线程的ContextClassLoader默认都是AppClassLoader
---


### 2.Linking:连接
- Verify:验证
- Prepare:准备
- Resolve:解析

- Initialization:初始化


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

