# Java内存

- 单位：k，m，g
- 物理内存大小memory=4g

## 堆区内存
> heap space
- Java 虚拟机启动时创建的

- `Heap`=`Young｜New` + `Tenure|Old`
- `-XX:NewRatio=2`:Old/New=2/1

---

- 堆区初始大小，默认是系统内存的1/64
    - `-Xms256m`
- 堆区最大大小，默认是系统内存的1/4
    - `-Xmx1g`
    - `-XX:MaxHeapSize=1g`
- 线程栈最大大小
    - `-Xss128m`
    - `-XX:ThreadStackSize=128m`

- 默认堆区内存小于40%时，JVM就会增大堆直到-Xmx的最大限制；

- 空余堆内存大于70%时，JVM会减少堆直到-Xms的最小限制。

### 新生代
> New

- `Young｜New` = `Eden` + `Survivor` * 2
- `–XX:SurvivorRatio=8`:Edem/Survivor=8/1


---
- 新生代初始大小
    - `-XX:NewSize=256m`
- 新生代最大大小
    - `-Xmn512m`
    - `-XX:MaxNewSize=512m`








## 非堆内存
> non-heap


- 方法区
    - 永久代：堆内存
    - 元空间：物理内存
- 非堆内存初始大小，默认是系统内存的1/64
    - `-XX:PermSize=256m`
- 非堆内存最大大小，默认是系统内存的1/4
    - `-XX:MaxPermSize=1g`



---


- 官方推荐:
    - New/Old=1/2
    - New/Heap=3/8
    - Survivor/New=1/10