# Zookeeper

## 安装配置

### 单机部署

```

tar -zxvf zookeeper-x.x.x.tar.gz
mv -rf zookeeper-x.x.x/ /usr/zookeeper/

cd /usr/zookeeper/
cp conf/zoo_sample.cfg conf/zoo.cfg 

./bin/zkServer.sh start
./bin/zkServer.sh status

```

### 集群部署

```

cp -f /usr/zookeeper/ /usr/zookeeper/zookeeper1/

vim /usr/zookeeper/zookeeper1/conf/zoo.cfg 

# The number of milliseconds of each tick
tickTime=2000
# The number of ticks that the initial 
# synchronization phase can take
initLimit=10
# The number of ticks that can pass between 
# sending a request and getting an acknowledgement
syncLimit=5
# the directory where the snapshot is stored.
dataDir=/tmp/zookeeper/zookeeper1
# the port at which the clients will connect
clientPort=2111
# server.x
server.1=127.0.0.1:2121:2131
server.2=127.0.0.1:2122:2132
server.3=127.0.0.1:2123:2133

esc+:wq

ehco 1 > /tmp/zookeeper/zookeeper1/myid

/usr/zookeeper/zookeeper1/bin/zkServer.sh start

/usr/zookeeper/zookeeper1/bin/zkServer.sh status

```


### 命令配置

- path
- data
- acl权限控制（authority control）：read|write|create|delete|admin|all 
- watch
- version

```
/usr/zookeeper/zkCli.sh -server 127.0.0.1:2181
[zk: 127.0.0.1:2181(CONNECTED) 0] 

ls=help
ls /
stat /
ls2=ls+stat 

# 创建
create path data acl
-e：临时
-s：顺序

# 删除
delete path

# 设置|获取
set
get

connect
close

quit






```

### 程序调用

#### Java

```
# pom.xml
<dependency>
	<groupId>org.apache.zookeeper</groupId>
	<artifactId>zookeeper</artifactId>
	<version>${zookeeper.version}</version>
</dependency>





```





