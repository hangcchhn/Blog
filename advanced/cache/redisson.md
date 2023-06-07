# Redisson

- 对Redis的关注分离(Separation of Concern)
- 在Redis的基础上实现的Java驻内存数据网格(In-Memory Data Grid)

---
## Redisson分布式锁
- `RLock`接口继承`Lock`接口和`RLockAsync`接口
    - `RLockAsync`接口所有方法的返回结果类型都是`RFuture`接口

- `RedissonLock`类实现`RLock`接口


- `unLock`方法使用了Redis的发布订阅(Publish/Subscribe)完成消息通知
- `LockPubSub`类实现`PublishSubscribe`接口实现`onMessage`方法
    - `RedissonLockEntry`类的`getLatch`方法返回类型是`Semaphore`类

- Netty的Future/Promise-Listener模型


## Redisson锁续约

- WatchDog机制：定时任务每10秒检查线程是否持有锁，如果持有就延迟过期时间
- `getLockWatchdogTimeout`方法返回超时默认30000毫秒

- `RedissonBaseLock`抽象类的`scheduleExpirationRenewal`方法

## Redisson公平锁

- 延迟队列
- 使用Redis的List和ZSet实现


---


- 联锁(MultiLock)

- 红锁(RedLock)

- 读写锁(ReadWriteLock)

- 闭锁(CountDownLatch)