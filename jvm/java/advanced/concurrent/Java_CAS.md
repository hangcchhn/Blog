# Java CAS

- Compare And Swap
- Compare And Set


- 比较并交换
- 三个操作数：内存地址，预期值和新值
- 只有当内存地址的值与预期值一致时，才能将内存地址的的值更新为新值
- 自旋：不断的进行比较判断是否可以交换，不断循环时间长开销大
- CAS只能保证一个共享变量的原子操作


- Java的CAS是使用x86架构CPU提供的`lock cmpxchg`指令保证操作原子性
    - `lock`指令通过锁住总线保证多核CPU下的操作原子性

- CAS是无法解决ABA问题，内存地址的值是A，有个线程改成B，后来又改成A，CAS则认为内存地址没有被修改过。
- 解决ABA问题策略
    - 添加版本号
    - 添加时间戳
    - 悲观锁
    - 乐观锁


## atomic
>java1.5

- `java.util.concurrent.atomic`包下的类实现了CAS功能
    - 底层借助`volatile`才能读取到共享变量的最新值来实现CAS效果

---
### 基本类型
- `AtomicBoolean`类
- `AtomicInteger`类
- `AtomicLong`类

### 引用类型
- `AtomicReference`原子引用类：保证引用对象之间的原子性
- 解决ABA问题
    - `AtomicStampedReference`类：记录变动次数
    - `AtomicMarkableReference`类：不关注变动次数，只关注是否变动

### 数组
- `AtomicIntegerArray`类
- `AtomicLongArray`类
- `AtomicReferenceArray`类


### 字段更新器
- 只能与配合`volatile`修饰的字段使用：`Must be volatile type`
- `AtomicIntegerFieldUpdater`类
- `AtomicLongFieldUpdater`类
- `AtomicReferenceFieldUpdater`类

### 累加器
- 在高并发环境下，`AtomicLong`会因为单个共享变量导致判断失败重试次数增加，`LongAdder`将单个共享变量的并发压力分散到多个上，减少判断失败重试次数。

- `LongAdder`类继承`Striped64`抽象类，`Striped64`有`long base`和`Cell[] cells`两个成员
- `void add(long x)`方法在并发情况下，每个线程根据hash获取`Cell`数组元素，通过其中的`value`实现CAS操作。
- `long sum()`方法计算结果等于`base`加上`cells`数组中所有元素的`value`，在并发情况下结果不准确。
- `long reset()`方法将`base`和`cells`数组中所有元素的`value`重置为`0L`。
- `static final class Cell`类提供了对`volatile long value`CAS操作的`final boolean cas(long cmp, long val)`方法
- `Cell`类使用`@Contended`注解，避免伪共享。


- `DoubleAdder`
- `LongAccumulator`
- `DoubleAccumulator`

-



---
### 伪共享
- 一个缓存行存储了多个共享变量数据，某个线程要修改共享变量前会先锁定其所在的缓存行，并把其他线程中相关的缓存行设置为无效，若存在伪共享，同一缓存行的其他不相关的共享变量也无法被其他线程访问，还会因缓存行失效需要重新从内存中读取，造成性能损耗。

- 添加`-XX:-RestrictContended`参数使用`@Contended`注解，可使共享变量单独占用一个缓存行避免伪共享。
    - Java1.8中使用`@sun.misc.Contended`注解
    - Java11中使用`@jdk.internal.vm.annotation.Contended`注解


---


