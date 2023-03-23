

Arrays.asList()返回的是Arrays.ArrayList(Arrays的内部类)
注意区分java.util.Arrays.ArrayList和java.util.ArrayList
Arrays.ArrayList类虽然实现了List接口，但是没有完整的实现List所有方法
建议使用new ArrayList<>(Arrays.asList(arrays))转换

---
## HashMap
在 JDK 1.7 中 HashMap 是以数组加链表的形式组成的

在JDK 1.8 之后新增了红黑树的组成结构
当链表长度大于8时链表结构会转换成红黑树结构



默认初始容量initialCapacity默认为16

默认加载因子loadFactory默认为0.75
当元素占有比达到加载因子就会进行扩容


容量按照2^n次幂进行扩容

要通过key找到对应的value的位置
先根据key通过hashcode函数计算获得哈希值，
再将哈希值与hashmap的长度减一并做位运算与&得到index
总结得到的公式就是index = hash(key) & (length - 1)

当数组长度为2的n次幂的时候，不同的key算得得index相同的几率较小，
那么数据在数组上分布就比较均匀，也就是说碰撞的几率小，相对的，
查询的时候就不用遍历某个位置上的链表，这样查询效率也就较高了。



---
## Queue

阻塞队列原理：
1. 当队列中没有数据的情况下，消费者端的所有线程都会被自动阻塞（挂起），直到有数据放入队列。
2. 当队列中填满数据的情况下，生产者端的所有线程都会被自动阻塞（挂起），直到队列中有空的位置，线程被自动唤醒。

阻塞队列类型：
1. ArrayBlockingQueue ：由数组结构组成的有界阻塞队列。
2. LinkedBlockingQueue ：由链表结构组成的有界阻塞队列。
3. PriorityBlockingQueue ：支持优先级排序的无界阻塞队列。
4. DelayQueue：使用优先级队列实现的无界阻塞队列。
5. SynchronousQueue：不存储元素的阻塞队列。
6. LinkedTransferQueue：由链表结构组成的无界阻塞队列。
7. LinkedBlockingDeque：由链表结构组成的双向阻塞队列。


---


## generic
jdk 1.5新增泛型
用类型或者方法操作各种类型的对象从而提供编译期的类型安全功能

泛型类型擦除

---
