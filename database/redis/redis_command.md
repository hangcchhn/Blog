# Redis 命令

## 基本操作

```sh
redis-cli -h host -p port -a auth
host:port>

```

```sh
auth password
help command



# 切换数据库：dbindex默认0~15
select dbindex
# 数据库大小
dbsize
# 移动
move key dbindex

# 持久化
flushdbisis
flushall

```

```sh

# 检查连接
ping
PONG

# 打印
echo print
"print"


# 信息
info
# 时间
time
# 退出
quit

# 监控
monitor


# 配置
config get param
config set param value

# 清空
flushdb
flushall


# 保存
# rdb文件
save
dbsave
lastsave
# aof文件
bgrewriteaof

# 关闭
shutdown save|nosave

# 慢日志
slowlog
slowlog len
slowlog get 10



# 慢日志配置
config set slowlog-log-slower-than 10000
config set slowlog-max-len 128


```


## 查看命令

```sh
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
- multi(begin)
- exec(commit)
- discard(rollback)

```sh



```