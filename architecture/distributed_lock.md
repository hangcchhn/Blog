# Distributed Lock
> 分布式锁

## 概念理解

### 进程锁

### 线程锁

### 分布式锁

## 使用场景

- 并发冲突问题：分布式集群部署的应用对金额，库存等数据更新操作
- 定时任务集群部署限制同时只有一台执行



## 实现方式

### 使用数据库实现
- 悲观锁
> 利用`for update`实现排他锁
```sql
-- mysql中where条件必须走索引否则会锁表
-- 如果表数据量过大，导致优化器会不走索引
begin;
select money_ from table_ where index_ = where_ for upadte;
update table_ set money_ = money_ - price_ where index_ = where_
commit;

```


- 乐观锁
> 表中有个字段用于记录修改次数(通常定义为version版本字段并每次修改自增一次)

```sql
-- 主键唯一只能查询出一条记录来并记录下查询结果
select `version` from table_ where  pk = id

-- mysql 一张表只能用一个自增主键
update table_ set money_ = money_ - price_, `version` = `version` +1   where pk = id and `version` = (select_result)

-- 并发量大的时候只有一个线程可以修改成功，解决版本：减小乐观锁的粒度
update table_ set money_ = money_ - price_ where pk = id and money_ - price_ >= 0
```
### 使用redis实现

> https://redis.io/topics/distlock

#### 获取锁

- Redis 2.6.12之前：
```
SETNX lock true
EXPIRE lock 1000

两条语句是非原子操作

```
- Redis 2.6.12新增：

```

SET lock true NX EX 1
SET lock true NX PX 1000

NX不存在则创建
EX设置过期时间（单位秒）
PX设置过期时间（单位毫秒）
```

#### 释放锁

- 由于存在过期时间机制，要先判断是否存在，如果存在才能执行删除操作
- 使用lua脚本将判断和删除key操作封装成原子操作以确保并发安全问题
```lua

if redis.call("get",KEYS[1]) == ARGV[1] then
    return redis.call("del",KEYS[1])
else
    return 0
end
```

### 使用zookeeper实现

- ZooKeeper是一个分布式的，开放源码的分布式应用程序协调服务
- Google的Chubby一个开源的实现，是Hadoop和Hbase的重要组件
- 一个为分布式应用提供一致性服务的软件，提供的功能包括：配置维护、域名服务、分布式同步、组服务等

- 开源库Curator是ZooKeeper客户端，提供的InterProcessMutex实现了分布式锁：acquire方法用于获取锁，release方法用于释放锁。