# cache
> 缓存

---
## 缓存类型
- 进程内缓存
    - ehcache
    - caffeine
- 集中式缓存
    - redis
    - memcached

- j2cache：多级缓存
---

---
## 缓冲穿透

缓存没有命中，导致数据库压力过大

- 缓存空值：避免不存在的key每次都直接查询数据库，第一次查询数据库不存在就在缓存中存null，下次直接在缓存中返回null
- 布隆过滤器(BloomFilter)：在查询缓存之前校验key是否存在，先过滤掉不存在的key

## 缓存击穿

高并发系统中同时多个线程查询缓存中失效的key（数据库存在），导致数据库压力剧增，
解决方案是查询数据库过程添加互斥锁，第一个线程获取锁后，其他线程拿不到锁就等会，等能获取到锁时（此时第一个线程已经处理好缓存）就直接查询缓存

## 缓存雪崩

大量缓存失效，例如缓存服务宕机

- 事前：缓存服务使用集群部署保证高可用，例如Redis Cluster（主从复制+哨兵监控）
- 事中：本地缓存，限流和降级
    - ehcache
    - hystrix
    - sentinel

- 事后：Redis缓存持久化机制重启后自动读取磁盘数据加载内存，包括快照rdb和日志aof

## 热点数据失效问题

- 访问命中缓存后可适当延长过期时间：根据过期时间可设定到达最小临界点才延长，到达最大临界点就不再延长
    - 备注：当版本redis<2.1.3时，命令expire对一个已设置了过期时间的key更新时会失败
- 是否能判断热点数据进行动态设置过期时间
- 参考缓存击穿解决方案添加互斥锁
