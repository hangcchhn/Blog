
# Redis Command

> redis命令


## 0.基本操作

```
redis -h host -p port -a auth

auth password
help command

# 生产环境禁止使用
keys *

set key value
get key

```

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


## 查看命令

```
info
info server
info clients
info sentinel

sentinel masters
sentinel master mymaster
sentinel slaves mymaster
sentinel sentinels mymaster

sentinel get-master-addr-by-name mymaster


```


## 事务命令

multi(begin)
exec(commit)
discard(rollback)