# Redis standalone
> 单机模式

## 安装


### centos7.x install redis5.x libc
```
redis-4.0.8.tar.gz

tar -zxvf redis-4.0.8.tar.gz

mv redis-4.0.8 /usr/local/redis

cd /usr/local/redis/src

make|make MALLOC=libc

make install PREFIX=/usr/local/redis|make install PREFIX=/chench/redis-4.0.8

cd /usr/local/redis/bin

cp ../*.conf ./

```



### centos7.x install redis5.x jemalloc
```
wget https://github.com/jemalloc/jemalloc/releases/download/5.2.0/jemalloc-5.2.0.tar.bz2
yum install bzip2
tar -jxvf jemalloc-5.2.0.tar.bz2
cd jemalloc-5.2.0
./configure
make
make install

redis-5.0.5.tar.gz
tar -zxvf redis-5.0.5.tar.gz
cd redis-5.0.5
make MALLOC=/usr/local/jemalloc/lib
make install PREFIX=/usr/local/redis

```

---

## 操作

- edit redis.conf

```
bind 0.0.0.0 # 地址
requirepass ****** # 密码
daemonize yes # 开启守护线程
protected-mode no # 禁用保护模式
```

- server start
```
redis-server redis.conf
```

- client connect
```
redis-cli -h host -p port -a auth
```



---
## 配置
```
make install PREFIX=/Users/hn/Macintosh/work/redis/standalone/


# redis.conf
bind 0.0.0.0
protected-mode no
daemonize yes
requirepass chench

port 6379
pidfile ./redis_6379.pid
dbfilename redis_6379.rdb
#dir ./

appendonly yes
appendfilename redis_6379.aof
logfile ./redis_6379.log
#loglevel verbose


root@localhost:standalone# cat standalone_conf.sh

```

---
## 脚本
```
#!/bin/bash

REDIS_PORT=6379
REDIS_PATH=$PWD
REDIS_CONF=$PWD/redis_$REDIS_PORT.conf

REQUIREPASS=chench
MASTERAUTH=chench


mv -f ./redis.conf $REDIS_CONF
sed 's/^bind 127.0.0.1.*/bind 0.0.0.0/' $REDIS_CONF -i
sed 's/^.*daemonize no.*/daemonize yes/' $REDIS_CONF -i
sed 's/^.*protected-mode yes.*/protected-mode no/' $REDIS_CONF -i
sed '$arequirepass '$REQUIREPASS'' $REDIS_CONF -i

sed 's/^port.*/port '$REDIS_PORT'/' $REDIS_CONF -i
sed 's#^.*pidfile.*#pidfile ./redis_'$REDIS_PORT'.pid #' $REDIS_CONF -i
sed 's#^.*dbfilename.*#dbfilename redis_'$REDIS_PORT'.rdb #' $REDIS_CONF -i

sed 's/^.*appendonly no.*/appendonly yes/' $REDIS_CONF -i
sed 's#^.*appendfilename.*#appendfilename redis_'$REDIS_PORT'.aof #' $REDIS_CONF -i
sed 's#^.*logfile.*#logfile ./redis_'$REDIS_PORT'.log #' $REDIS_CONF -i

```

