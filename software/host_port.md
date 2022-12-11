
# 主机名+端口号
> host+port




## 主机名

vim /etc/hosts
127.0.0.1 cent
::1  cent

vim /etc/sysconfig/network
NETWORKING=yes
HOSTNAME=cent



---

```sh
# Mac OS
sudo scutil --get HostName
sudo scutil --set HostName 'chench-PC'

# Cent OS
hostnamectl set-hostname chench
```

---
## Linux

- ip
```sh

ip addr[ess]


ip addr show [eth0]

ip route show


ip -s link

```




---
- ifconfig



---
- netstat
```sh
all:netstat -a
tcp:netstat -t
udp:netstat -u
listen:netstat -l
program:netstat -p
statistics:netstat -s

-n, --numeric:以数字形式显示主机和端口号

# 根据端口号或程序查询进程
netstat -anlp | grep port
netstat -anlp | grep "process"



# 统计某端口连接数
netstat -anlp | grep port |wc -l
```

---
## Windows


---
- ipconfig


---
- netstat
```sh
netstat -aon | findstr ""

```




---
## mac OS


---
- ipconfig


---
- lsop
```sh
lsop -i ""


```