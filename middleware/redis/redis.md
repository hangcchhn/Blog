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

##### Redis Server
- x64:
3.2.100：https://github.com/MSOpenTech/redis/releases
- x86:
2.8.2400：http://bitsandpieces.it/redis-x86-32bit-builds-for-windows
3.0.504：https://github.com/cuiwenyuan/Redis-Windows-32bit

##### Redis Client：
RedisDesktopManager：https://github.com/uglide/RedisDesktopManager/releases/tag/0.9.3

#### (2)Ubuntu

apt install redis-server

#### (3)CentOS
yum  install redis

#### (4)Mac
brew install redis

### 3.版本

- 2.8.x：没有保护模式和集群模式
- 3.x.x：有集群模式没有保护模式
- 4.x.x：都有保护模式和集群模式
- 5.x.x:不依赖ruby配置集群模式
- 6.x.x:单线程基础上引入多线程








