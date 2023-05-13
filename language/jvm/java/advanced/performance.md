# Java性能


## 单例模式

---
## 终态final


---
## finalize方法
- Object类中定义的protect方法
- GC准备释放对象所占用的内存空间之前调用，调用时机具有不确定性


### 流程

- 重写finalize方法的类，编译后类会被标记has_finalizer，此类的对象被创建的同时会再创建一个Finalizer对象
- Finalizer对象会持有当前对象的引用，并将Finalizer对象放在Finalizer.unfinalized容器中
- 当对象需要被回收时，GC从Finalizer.unfinalized容器获取对应Finalizer对象放置在F-QUEUE队列中
- FinalizerThread守护线程，是GC机制中专门用来执行finlize()方法的线程，从F-QUEUE队列获取Finalizer对象中引用的finalize方法

- 执行finalize方法可能被其他对象引用，再次回收时，Finalizer.unfinalized容器已经移除Finalizer对象，finalize方法只会被执行异常
- finalize方法是单线程串行执行的，会影响其他对象的finalize方法执行，如果finalize方法没有执行完会导致内存泄漏


---

##

- 线程安全，同步机制，消耗过大
- ArrayList,HashMap
- HashTable,Vector

---
- 使用移位操作替代乘除运算
- 尽量避免使用二维数组
- 尽量避免使用`String.split()`,可以考虑使用apache的`StringUtils.split(String,char)`

