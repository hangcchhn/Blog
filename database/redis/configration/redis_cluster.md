# Redis cluster

## 集群模式
```
make install PREFIX=/Users/hn/Macintosh/work/redis/cluster/

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

# master not replica only
replicaof 127.0.0.1 6380
masterauth chench
cluster-enabled yes
cluster-node-timeout 15000
cluster-config-file ./nodes_7001.conf

root@localhost: cluster# cat cluster_conf.sh
```

### 配置脚本

```bash
#!/bin/bash

# REDIS_PORT=6379
read -p 'REDIS_PORT:' REDIS_PORT
REDIS_PATH=$PWD
REDIS_CONF=$PWD/redis_$REDIS_PORT.conf

REQUIREPASS=chench
MASTERAUTH=chench

cp -f ./redis.conf $REDIS_CONF
sed 's/^bind 127.0.0.1.*/bind 0.0.0.0/' $REDIS_CONF -i
sed 's/^.*daemonize no.*/daemonize yes/' $REDIS_CONF -i
sed 's/^.*protected-mode yes.*/protected-mode no/' $REDIS_CONF -i
sed '$arequirepass '$REQUIREPASS'' $REDIS_CONF -i

sed 's/^port.*/port '$REDIS_PORT'/' $REDIS_CONF -i
sed 's#^.*pidfile.*#pidfile ./redis_'$REDIS_PORT'.pid #' $REDIS_CONF -i
sed 's#^.*dbfilename.*#dbfilename redis_'$REDIS_PORT'.rdb #' $REDIS_CONF -i

sed 's/^.*daemonize no.*/daemonize yes/' $REDIS_CONF -i
sed 's#^.*appendfilename.*#appendfilename redis_'$REDIS_PORT'.aof #' $REDIS_CONF -i
sed 's#^.*logfile.*#logfile ./redis_'$REDIS_PORT'.log #' $REDIS_CONF -i


sed '$acluster-enabled yes' $REDIS_CONF -i
sed '$acluster-node-timeout 15000' $REDIS_CONF -i
sed '$acluster-config-file ./nodes_'$REDIS_PORT'.conf' $REDIS_CONF -i

../bin/redis-server ./redis_$REDIS_PORT.conf

```

### 配置克隆

```bash
cp redis_7001.conf redis_7002.conf
vim redis_7002.conf
esc:%s/7001/7002/g
```

### 集群配置
```
../bin/redis-cli -a chench --cluster-replicas 1 --cluster create 127.0.0.1:7001 127.0.0.1:7002 127.0.0.1:7003 127.0.0.1:7004 127.0.0.1:7005 127.0.0.1:7006


../bin/redis-cli -c -h 127.0.0.1 -p 7001 -a chench

cluster info

cluster meet 127.0.0.1 7002

cluster nodes

cluster replicate node_id
```


### 操作命令

```
cluster info：打印集群的信息。
cluster nodes：列出集群当前已知的所有节点（node）的相关信息。
cluster meet <ip> <port>：将ip和port所指定的节点添加到集群当中。
cluster addslots <slot> [slot ...]：将一个或多个槽（slot）指派（assign）给当前节点。
cluster delslots <slot> [slot ...]：移除一个或多个槽对当前节点的指派。
cluster slots：列出槽位、节点信息。
cluster slaves <node_id>：列出指定节点下面的从节点信息。
cluster replicate <node_id>：将当前节点设置为指定节点的从节点。
cluster saveconfig：手动执行命令保存保存集群的配置文件，集群默认在配置修改的时候会自动保存配置文件。
cluster keyslot <key>：列出key被放置在哪个槽上。
cluster flushslots：移除指派给当前节点的所有槽，让当前节点变成一个没有指派任何槽的节点。
cluster countkeysinslot <slot>：返回槽目前包含的键值对数量。
cluster getkeysinslot <slot> <count>：返回count个槽中的键。

cluster setslot <slot> node <node_id> 将槽指派给指定的节点，如果槽已经指派给另一个节点，那么先让另一个节点删除该槽，然后再进行指派。
cluster setslot <slot> migrating <node_id> 将本节点的槽迁移到指定的节点中。
cluster setslot <slot> importing <node_id> 从 node_id 指定的节点中导入槽 slot 到本节点。
cluster setslot <slot> stable 取消对槽 slot 的导入（import）或者迁移（migrate）。

cluster failover：手动进行故障转移。
cluster forget <node_id>：从集群中移除指定的节点，这样就无法完成握手，过期时为60s，60s后两节点又会继续完成握手。
cluster reset [hard|soft]：重置集群信息，soft是清空其他节点的信息，但不修改自己的id，hard还会修改自己的id，不传该参数则使用soft方式。

cluster count-failure-reports <node_id>：列出某个节点的故障报告的长度。
cluster set-config-epoch：设置节点epoch，只有在节点加入集群前才能设置。


```