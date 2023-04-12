
# Redis持久化


---
## 1.快照rdb(redis database backup)

单次的全量备份内存数据的二进制序列化形式
- 存储紧凑

- Redis使用操作系统OS(Operating System)的多进程COW(Copy On Write)机制实现rdb快照持久化

---
## 2.日志aof(append only file)

- 增量备份内存数据的修改指令记录
- 重启时需要将所有指令按顺序执行


日志文件存储的是顺序指令序列，只存储对内存进行修改的指令记录

- redis是先执行指令再存储日志
- hbase是先存储日志再执行指令

- linux系统的glibc服务提供了fsync函数，可以将指定文件的内容强制从内核缓冲写到磁盘

- fsync函数可以保证aof日志的完整性
- 磁盘读写操作比较耗时，生产环境建议redis每秒调用一次fsync操作


- redis.conf
```ini
# 要配置随时保存缓存数据快照的功能
# 就不能适当的监控和持久化到磁盘上
stop-writes-on-bgsave-error no
```
- redis-cli
```sh
# rdb快照文件
# 前台运行保持快照文件
save
# 后台运行保持快照文件
bgsave

# aof日志文件
# 重新序列化操作指令后，追加到新的日志中，最后替换旧的日志文件
bgrewriteaof
```


---
## Redis支持混合持久化
> Redis>=4.0

- 将rdb快照和aof日志存在一起，此时aof日志不再是全量的，而是增量的，记录的是rdb快照之后的修改内存指令序列
- Redis重启时是先加载rdb快照再重放增量的aof日志