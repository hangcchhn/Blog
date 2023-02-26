



---


## redis 过期删除策略

1.惰性删除
当客户端获取键值时检测是否过期，如果过期就返回空


2.定期删除

定时执行检测键值是否过期，如果过期就删除

默认情况下，每秒扫描10次，redis.conf可配置：hz 10

定期删除每次扫描所有带有过期时间键值消耗资源过大
每次随机抽取20个带有过期时间键值进行过期时间检测
如果超过25%键值过期重复此操作直到少过25%键值过期

为了保证过期删除策略不会导致线程卡死，
会给过期扫描增加了最大执行时间为25ms。


---


## redis 内存淘汰策略

使用config get maxmemory-policy命令查询当前内存淘汰策略

Redis默认的内存淘汰策略：noeviction

使用config set maxmemory-policy noeviction命令设置内存淘汰策略，
无需重启立刻生效，但是不支持持久化，重启内存淘汰策略配置丢失

配置文件redis.conf对应的配置项是“maxmemory-policy noeviction”

Redis 4.0.0之前：
noeviction：不淘汰任何数据，当内存不足时，执行缓存新增操作会报错，它是 Redis 默认内存淘汰策略。
allkeys-lru：淘汰整个键值中最久未使用的键值。
allkeys-random：随机淘汰任意键值。
volatile-lru：淘汰所有设置了过期时间的键值中最久未使用的键值。
volatile-random：随机淘汰设置了过期时间的任意键值。
volatile-ttl：优先淘汰更早过期的键值。

Redis 4.0.0新增：
volatile-lfu，淘汰所有设置了过期时间的键值中最少使用的键值；
allkeys-lfu，淘汰整个键值中最少使用的键值。


Redis 内存淘汰算法
1.LRU（Least Recently Used，最近最少使用）淘汰算法
2.LFU（Least Frequently Used，最不常用的）淘汰算法

---

单机锁：

1.悲观锁，是数据对外界的修改采取保守策略，它认为线程很容易把数据修改掉，因此在整个数据被修改的过程中都会采取锁定状态，直到一个线程使用完，其他线程才可以继续使用，
    典型应用是 synchronized 关键字；
2.乐观锁，和悲观锁的概念恰好相反，乐观锁认为一般情况下数据在访问时不会出现冲突，所以在数据访问之前不会加锁，只是在数据提交更改时，才会对数据进行检测，
    典型应用是 ReadWriteLock 读写锁；
3.可重入锁，也叫递归锁，指的是同一个线程在外面的函数获取了锁之后，那么内层的函数也可以继续获得此锁，
    在 Java 语言中 ReentrantLock 和 synchronized 都是可重入锁；
4.独占锁和共享锁，只能被单线程持有的锁叫做独占锁，可以被多线程持有的锁叫共享锁，独占锁指的是在任何时候最多只能有一个线程持有该锁，
    比如 ReentrantLock 就是独占锁；而 ReadWriteLock 读写锁允许同一时间内有多个线程进行读操作，它就属于共享锁。


悲观锁：悲观并发控制（Pessimistic Concurrency Control）传统的关系型数据库的行锁，表锁等
1.shared locks      共享锁又称为读锁
2.exclusive locks   排他锁又称为写锁

乐观锁：java语言中java.util.concurrent.atomic包下的类使用比较并交换CAS（Compare and Swap）实现

乐观锁实现步骤：冲突检测和数据更新
CAS三个操作数：内存地址，预期原原和修改新值
只有当内存地址的实际值与预期值一致时才能对内存地址更新值



---




Redis高性能的原因：
1.完全基于内存：绝大部分请求是纯粹的内存操作，执行效率高
2.数据结构是专门进行设计的：数据结构简单、对数据操作也简单
2.单线程运行：没有线程切换消耗，没有多线程安全锁获取释放带来消耗
3.使用多路 I/O 复用模型的非阻塞IO

---

key命名规则

class-type:object-id:field-name
层级关系使用冒号:
多词分割使用减号-

