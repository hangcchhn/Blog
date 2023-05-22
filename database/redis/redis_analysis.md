



---


## Redis 过期删除策略

1. 惰性删除
当客户端获取键值时检测是否过期，如果过期就删除，并返回空


2. 定期删除

定时执行检测键值是否过期，如果过期就删除

默认情况下，每秒扫描10次
redis.conf可配置：hz 10

定期删除每次扫描所有带有过期时间键值消耗资源过大
每次随机抽取20个带有过期时间键值进行过期时间检测
如果超过25%键值过期重复此操作直到不超过25%键值过期

为了保证过期删除策略不会导致线程卡死，
会给过期扫描增加了最大执行时间为25ms。


- 如果惰性删除和定期删除可能导致某些带有过期时间的key已过期但没有及时删除导致内存无效占用，因此引入内存淘汰策略


---
## Redis 内存淘汰策略

Redis默认的内存淘汰策略
- Redis<3.0:volatile-lru
- Redis>=3.0:noeviction


使用config get maxmemory-policy命令查询当前内存淘汰策略
使用config set maxmemory-policy noeviction命令设置内存淘汰策略，
无需重启立刻生效，启内存淘汰策略配置丢失

配置文件redis.conf对应的配置项是“maxmemory-policy noeviction”

- 默认内存淘汰策略
    - noeviction：不淘汰任何数据，当内存不足时，执行缓存新增操作会报错
- 在设置了过期时间的数据中进行淘汰
    - volatile-ttl：优先淘汰更早过期的键值。
    - volatile-random：随机淘汰设置了过期时间的任意键值。
    - volatile-lru：淘汰所有设置了过期时间的键值中最久未使用的键值。
    - volatile-lfu，淘汰所有设置了过期时间的键值中最少使用的键值；

- 在所有数据范围内进行淘汰
    - allkeys-random：随机淘汰任意键值。
    - allkeys-lru：淘汰整个键值中最久未使用的键值。
    - allkeys-lfu，淘汰整个键值中最少使用的键值。

- Redis>=4.0新增：volatile-lfu和allkeys-lfu
---
## Redis 内存淘汰算法

配置maxmemory设置最大内存

### 1.LRU（Least Recently Used，最近最少使用，最久未使用）淘汰算法
> 记录数据的访问时间，淘汰最久没有访问的数据
Redis<3.0根据配置maxmemory_samples（默认为5）随机采样，根据LRU选择一个淘汰，即基于采样的近似LRU算法

Redis>=3.0对LRU进行了升级，
- Redis维护一个全局LRU时钟，记录了自服务启动后的LRU时间，每100ms更新一次。
- Redis维护一个驱逐池(eviction pool)，容量为16，包含key和空闲时间，空闲时间等于当前时间-访问时间，驱逐池中按空闲时间排序，
- 当内存达到最大内存配置时，开始随机采样选中空闲时间最大的key，如果驱逐池未满时按空闲时间插入，如果驱逐池满了时将空闲时间最小的剔除驱逐池，内存不足时淘汰空闲时间最大的数据

### 2.LFU（Least Frequently Used，最不常用的，最少使用）淘汰算法
> 记录数据的访问次数，淘汰最久没有访问的数据

- 衰减机制：lfu-log-factor 用于调整Logistic Counter的增长速度，lfu-log-factor值越大，Logistic Counter增长越慢。

---
