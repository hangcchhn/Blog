# Memcached

- 高性能分布式缓存系统
- 由C语言实现



- 只支持键值对，支持过期机制，值只支持字符串，且最大容量为1MB
- 数据完全存储在内存中，不支持持久化到磁盘中。
- 持续运行很少会出现内存碎片，性能不会随着运行时间降低。
- 底层运用IO多路复用模型，使用监听线程和工作线程的多线程模型。

---
- 通过启动预分配内存池管理内存
- memory由多个大小相同的slab组成，每个slab默认大小为1MB，可以指定
- slab由多个trunk组成，每个slab中的trunk的大小是不同的，但同一slab中的trunk的大小是相同的
- chunk
- item


---

## 安装

### 依赖libevent
- https://github.com/libevent/libevent/

```sh
# 在线安装
yum install libevent
apt install libevent

# 编译安装
./configure
make
make install


```

---
### 安装Memcached
- https://www.memcached.org/downloads
- https://github.com/memcached/memcached

```sh
# 在线安装
yum install memcached
apt install memcached

# 编译安装
./configure
make
make install

memcached -h
# 启动
memcached -m 64 -p 11211 -d -c 8192 -u root

```


## 命令

```sh
add
set
delete
append
prepend
replace

get
gets
incr
decr

stats
flush_all



```