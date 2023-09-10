# Linux系统

- 操作系统状态分为管态（内核态）和目态（用户态）
- 系统调用：操作系统通过中断从用户态切换到内核态

---
## IO多路复用

- Linux系统中的实现

### select
- 使用数组存储文件描述符(fd_set)，上限1024(FD_SETSIZE)
- 轮询


---
### poll
- 使用链表存储文件描述符，没有上限

---
### epoll
> event poll

- 基于事件驱动
- 线程安全
- 使用mmap共享系统部分内核和用户空间，减少数据拷贝

- 红黑树

- 触发模式
    - 水平触发(level-triggered):同时支持阻塞和非阻塞套接字
    - 边沿触发(edge-triggered):只支持非阻塞套接字


---
## Linux操作系统限制

- 系统文件描述符数上限：`/proc/sys/fs/file-max`
- 单个进程文件描述符数上限：文件`/etc/security/limits.conf`中的`noproc`配置
- 单个用户进程数上限：文件`/etc/security/limits.conf`中的`noproc`配置
- 系统线程数上限：`/proc/sys/kernel/threads-max`




- /etc/security/limits.conf
```conf
*               soft    nofile          65536
*               hard    nofile          65536
```

- `ulimit -n`

---
## Linux操作系统工具

```sh
# 查看负载
uptime

dmesg
tail

pidstat
vmstat l
mpstat -P ALL l


free -m
top

sar -n DEV l




```
