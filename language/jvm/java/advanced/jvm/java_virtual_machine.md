# Java虚拟机
> JVM(Java Virtual Machine)

---
- IBM J9 VM:绑定硬件,2019年开源Eclipse OpenJ9
- SUN HotSpot VM:2009年被Oracle收购
- BEA JRockit VM:2008年被Oracle收购
- Oracle在jdk8版本完成将JRockit整合到HotSpot
- JRockit最终版本R28，只支持到jdk6
- JRockit是即时编译器——JIT(Just In Time) Complier

---
## 一、类加载子系统
> Class Loaded Subsystem
### 1.Loading
> 加载

- Bootstrap Class Loader:引导类加载器，加载`$JAVA_HOME/lib/rt.jar`包里的运行时类(`java.util.*, java.lang.*, java.io.*, java.nio.*, ...`)


- Extension Class Loader:扩展类加载器，加载`$JAVA_HOME/lib/ext/*.jar`包里的拓展类(`javax.*`)
- Application Class Loader:应用类加载器，加载classpath下的jar包和class字节码，

- 通过双亲委派方式根据全限定名读取对应字节码文件到运行时数据区的方法区
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
## 虚方法表
> Virtual Method Table
- 多级继承层次比较深时，采用虚方法表的方式来优化调用效率；加载类时为每一个类创建一张表，存储该类所有的动态绑定方法及其地址，包括父类的方法，被子类重写的方法只保存子类的，没有被重写的方法保存父类的，每个方法只保存一条记录
---


### 2.Linking
> 连接

- Verify验证：格式，语义
- Prepare准备：静态变量分配内存空间赋默认值，常量赋值
- Resolve解析：将常量池中的符号引用替换为直接引用的过程。

- Initialization初始化：
    - 静态变量赋值
    - 执行静态代码块（执行JVM调用，只执行一次）
    - 如果存在父类，先初始化父类

---
## 描述创建对象过程
- 在堆中分配对象所需的内存空间：包括本类和父类所有实例变量
- 将方法区所有实例变量的定义拷贝到堆中并赋默认值
- 执行实例代码块和构造器：如果存在父类，先执行父类的
- 先在栈中定义引用变量，再使用在堆中分配内存的对象地址赋值

---
## 二、运行时数据区
> Runtime Data Area
- [二、运行时数据区](./runtime_data_area.md)


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

