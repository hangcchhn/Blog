# Collection

```java
interface Collection<E> extends Iterable<E>
```

---

## List


- 实现了`RandomAccess`接口使用`index`遍历
- 未实现`RandomAccess`接口使用`iterator`遍历

- `ArrayList`：数组
    - `Arrays.asList()`返回的是`Arrays.ArrayList`(Arrays的内部类)
    - 注意区分`java.util.Arrays.ArrayList`和`java.util.ArrayList`
    - `Arrays.ArrayList`类虽然实现了List接口，但是没有完整的实现List所有方法
    - 建议使用`new ArrayList<>(Arrays.asList(arrays))`转换

- `LinkedList`：链表
---

- `Vector`
    - 比`ArrayList`多了同步机制，效率低下，不推荐使用
    - 默认容量为10，扩容翻倍
    - 添加删除元素需要移动元素操作



## Map

- `HashMap`
在 JDK 1.7 中 HashMap 是以数组加链表的形式组成的

在JDK 1.8 之后新增了红黑树的组成结构
当链表长度大于8时链表结构会转换成红黑树结构

- 初始容量(initialCapacity)：默认为16

- 负载系数(loadFactor)：默认为0.75

- 当HashMap中元素占有比率达到loadFactor就会进行扩容, 容量按照2^n次幂进行扩容
- 当长度为2的n次幂的时候，不同的key算得得index相同的几率较小。

- 可以通过initialCapacity和loadFactor参数减少扩容

- 通过key找到对应的value的位置
    - 先根据key通过hashcode函数计算获得哈希值，
    - 再将哈希值与HashMap的长度减一并做位运算与&得到index
    - 总结得到的公式就是index = hash(key) & (length - 1)

- `SortedMap`

---

- `HashTable`
    - 是线程安全的
    - 整体一把锁，每次只能有一个线程操作
- `ConcurrentHashMap`
    - 是线程安全的


## Set

- `SortedSet`

## Queue



### `BlockingQueue`


- 阻塞队列原理：
    - 当队列中没有数据的情况下，消费者端的所有线程都会被自动阻塞（挂起），直到有数据放入队列。
    - 当队列中填满数据的情况下，生产者端的所有线程都会被自动阻塞（挂起），直到队列中有空的位置，线程被自动唤醒。

- 阻塞队列类型：
    - `ArrayBlockingQueue`：由数组结构组成的有界阻塞队列。
    - `LinkedBlockingQueue`：由链表结构组成的有界阻塞队列。
    - `PriorityBlockingQueue`：支持优先级排序的无界阻塞队列。
    - `DelayQueue`：使用优先级队列实现的无界阻塞队列。
    - `SynchronousQueue`：不存储元素的阻塞队列。
    - `LinkedTransferQueue`：由链表结构组成的无界阻塞队列。
    - `LinkedBlockingDeque`：由链表结构组成的双向阻塞队列。





---
## 线程安全集合
- `ConcurrentHashMap`是`HashMap`的线程安全版本
- `CopyOnWriteArrayList`是`ArrayList`的线程安全版本
- `LinkedBlokingQueue`

- 线程不安全的
    - ArrayList
    - HashSet
    - HashMap



- `Collections.synchronizedXxx`方法：返回同步类型（线程安全）
- `Collections.emptyXxx`方法：返回空的类型（不可变的）
- `Collections.singletonXxx`方法：返回只有一个元素的类型（不可变的）
- `Collections.unmodifiableXxx`方法：返回不可修改的视图