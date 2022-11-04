# ZooKeeper
> 分布式应用程序协调服务，是Google的Chubby一个开源的实现

- paxos算法
- raft算法





## 命令配置
> 分布式配置

- path
- data
- acl权限控制（authority control）：read|write|create|delete|admin|all
- watch
- version

```
bin/zkCli.sh -server 127.0.0.1:2181
[zk: 127.0.0.1:2181(CONNECTED) 0]

ls=help
ls /
stat /
ls2=ls+stat

# 创建节点
create [-e|s] path data [acl]
-e:临时节点
-s:持久节点

create /root/node/path 'data'

# 删除节点
delete path

# 设置节点
set path data
# 获取节点
get path

connect host:port
close

quit






```

### 程序调用

#### Java


- pom.xml
```xml
<dependency>
	<groupId>org.apache.zookeeper</groupId>
	<artifactId>zookeeper</artifactId>
	<version>${zookeeper.version}</version>
</dependency>


```

