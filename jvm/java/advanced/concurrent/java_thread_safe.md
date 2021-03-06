# 线程安全

- 多线程环境下，确保程序能正确地处理共享资源，不会出现不确定或者错误的结果；
- 保证共享资源的可见性、有序性、原子性，避免竞态条件和死锁等问题。


- 减小锁粒度是指缩小锁定对象的范围，从而减小锁冲突的可能性，从而提高系统的并发能力。
- 减小锁粒度是一种削弱多线程锁竞争的有效手段。
- 如果对整个`HashMap`加锁，可以得到线程安全的对象，但是加锁粒度太大。

---
## 不可变的
> immutable
- 使所有实例变量不能被修改来保证线程安全

- `String`字符串类所有实例变量都被`final`修饰，是不可变的(immutable)，也是线程安全的

- ` DateTimeFormatter`类 & `SimpleDateFormat`类

## 无状态的
> stateless
- 通过不设置实例变量来保证线程安全

- `Servlet`类


---
## ConcurrentHashMap

- 默认情况下，一个`ConcurrentHashMap`被进一步细分为16个段`Segment`，`Segment`的大小也被称为`ConcurrentHashMap`的并发度。

- `ConcurrentHashMap`是由 `Segment`和`HashEntry`组成，`Segment` 是一种可重入锁`ReentrantLock`，`HashEntry`用于存储键值对数据。

- 每个`Segment`守护一个`HashEntry`数组里的元素,当对`HashEntry`数组的数据进行修改时，必须首先获得它对应的`Segment`锁。


---

## 线程不安全的
> thread-unsafe

- 多个线程同时操作同一共享资源会出现不确定的结果
- 日期

- 字符串

- 集合
