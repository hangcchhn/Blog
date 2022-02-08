
# Redis Using

> redis使用


## 0


```

//检查连接
>ping
PONG

//打印
echo print
>"print"



//切换数据库
select 0
//数据库大小
dbsize

//信息
info
//时间
time
//退出
quit

//监控
monitor


//配置
config get param
config set param value

//清空
flushdb
flushall


//保存
//rdb文件
save
dbsave
lastsave
//aof文件
bgrewriteaof

//关闭
shutdown save|nosave

//慢日志
slowlog 
slowlog len
slowlog get 10



//慢日志配置
config set slowlog-log-slower-than 10000
config set slowlog-max-len 128


```



## 1.数据类型

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

