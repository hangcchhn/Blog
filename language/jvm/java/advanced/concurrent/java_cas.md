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

### 数组类型
- `AtomicIntegerArray`类
- `AtomicLongArray`类
- `AtomicReferenceArray`类


---


