# Redis

## 一、基础

### 1.介绍

Redis 是一个高性能的键值对key-value数据库。

### 2.安装

下载源码：http://redis.io/download
http://download.redis.io/releases/

编译：make
测试：make test
安装：make intall

#### (1)Windows

添加环境变量

设置最大内存

RedisServerClient：
- x64:
3.2.100：https://github.com/MSOpenTech/redis/releases
- x86:
2.8.2400：http://bitsandpieces.it/redis-x86-32bit-builds-for-windows
3.0.504：https://github.com/cuiwenyuan/Redis-Windows-32bit

RedisDesktopManager：https://github.com/uglide/RedisDesktopManager/releases/tag/0.9.3

#### (2)Ubuntu

apt install redis-server

#### (3)CentOS
yum  install redis-server

#### (4)Mac

brew install redis

### 3.版本

- 2.8.x：没有保护模式和集群模式
- 3.x.x：有集群模式没有保护模式
- 4.x.x：都有保护模式和集群模式
## 二、操作

### 0.通用操作

```

//连接程序
redis-cli



//查看信息
info

//输入密码
auth password

//查看帮助
help command




```

### 1.数据类型

命令规则：键key不能有空格和换行；值value随意

-  string——字符串

-  list——双向链表

-  set——无序集合

-  zset——有序集合

-  hash——哈希

### 2.字符串操作

```
//键值操作
//单个
set key value
get key
//多个
mset keys values
mget keys values
type key//类型
exists key//判断存在
del keys //删除
rename oldkey newkey//移动
keys *//显示
//加加减减
incr key
decr key
//加减
incrby key int
decrby key int
//过期时间
expire key second
ttl key
//字符串操作
append key value//追加
substr key start end//子串
//数据库
select dbindex
dbsize
move key dbindex
flushdb
flushall//设置键值
```

### 3.双向链表操作

```
//结点操作
//从头部l|从尾部r
//插入push|删除pop
lpush list nodes
rpush list nodes
lpop list
rpop list
//双向链表操作
llen list
lrange list start end
ltrim list start end

```

### 4.无序集合操作

```
//成员操作
sadd set members
srem set members
smove oldset newset member
sismember set member//判断集合成员
scard set//集合大小
smembers set//显示成员
//无序集合运算操作
sinter sets//交集
sunion sets//并集
sdiff sets//差集
```

### 5.有序集合操作

```
//成员操作
zadd zset scores members
zrem zset members
//权值
zscore zset member
//排序
zrange zset min max//降序
zrevrange zset min max//升序
//索引
zrank zset member//降序
zrevrank zset member//升序
zcard zset//集合大小
zremrangebyrank zset min max


```

### 6.哈希操作

```
//哈希操作
hset hash key value
hget hash key
hmset hash keys values
hmget hash keys

hexists hash key//判断存在
hdel hash key//删除
hlen hash//哈希大小
hkeys hash//显示所有key
hvals hash//显示所有value
hgetall hash//显示所有key和value
```

