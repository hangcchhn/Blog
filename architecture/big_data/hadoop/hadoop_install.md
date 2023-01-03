# install hadoop
> centos

无论哪种部署方式，hadoop都是按照远程部署方式运行；所有需要配置免密登录和环境变量。

- 配置好java环境变量
- 配置好ssh免密登录

---
- 注意Hadoop 2.x和Hadoop 3.x配置不同

---
## 单机模式

- hadoop-2.7.7
- jdk1.8.0_202
- scala-2.11.12
- CentOS 7.x

```sh
vim /etc/profile
export HADOOP_HOME=/opt/hadoop/hadoop-2.7.7
export PATH=$HADOOP_HOME/bin:$PATH
```
---

- etc/hadoop/hadoop-env.sh
```sh
# 按照远程部署方式运行，无法识别本地系统环境变量
# export JAVA_HOME=${JAVA_HOME}
export JAVA_HOME=/opt/java/jdk1.8.0_202
```

---

- etc/hadoop/slaves
```
192.168.10.169
```

---

- sbin/start-all.sh
    - sbin/start-dfs.sh
    - sbin/start-yarn.sh
- sbin/stop-all.sh
    - sbin/stop-dfs.sh
    - sbin/stop-yarn.sh
```sh
# 校验环境变量
hdfs version
# 第一次启动前格式化namenode配置
hdfs namenode -format

# 注意修改配置时要清空datanode路径

# 校验是否启动成功
jps

NameNode
DataNode
SecondaryNameNode

NodeManager
ResourceManager



yarn jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.7.jar pi 4 100



vim word.txt
hello me you he she
hello me you he
hello me you
hello me
hello

hdfs dfs -ls /
hdfs dfs -mkdir -p /word_count/
hdfs dfs -put word.txt /word_count/
hdfs dfs -ls /word_count/

spark-shell


```


- `http://192.168.10.169:50070`
- `http://192.168.10.169:8088`


---
- use root start/stop Hadoop 3.x
- /etc/profile
```sh
export HDFS_NAMENODE_USER=root
export HDFS_DATANODE_USER=root
export HDFS_SECONDARYNAMENODE_USER=root
export YARN_RESOURCEMANAGER_USER=root
export YARN_NODEMANAGER_USER=root

```


---
### protobuf
> 没有使用

```sh
# 源码编译
yum install protobuf
yum install protobuf-devel

tar -zxvf protobuf-2.5.0.tar.gz
./configure --prefix=/usr/protobuf/protobuf2.5.0
make
make check
make install

export PROTOBUF_HOME=/usr/protobuf/protobuf2.5.0
export PATH=$PROTOBUF_HOME/bin:$PATH

protoc --version
libprotoc 2.5.0

yum install cmake
yum install snappy
yum install ncurses-devel

export ANT_HOME=/usr/ant/ant1.10.11
export PATH=$ANT_HOME/bin:$PATH

mvn package -Pdist,native -Dsk192.168.10.169Tests -Dtar

```

---
## question
- WARN util.NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
```sh
ldd lib/native/libhadoop.so
lib/native/libhadoop.so: /lib64/libc.so.6: version `GLIBC_2.14' not found (required by lib/native/libhadoop.so)

strings /lib64/libc.so.6 | grep GLIBC

centos 6.10
GLIBC_2.12

vim etc/hadoop/log4j.properties
log4j.logger.org.apache.hadoop.util.NativeCodeLoader=ERROR


```

- ERROR org.apache.hadoop.hdfs.server.datanode.DirectoryScanner: dfs.datanode.directoryscan.throttle.limit.ms.per.sec set to value below 1 ms/sec. Assuming default value of 1000

- hdfs-site.xml
```xml
<property>
    <name>dfs.datanode.directoryscan.throttle.limit.ms.per.sec</name>
    <value>1000</value>
</property>

```

- ERROR org.apache.hadoop.hdfs.server.datanode.DataNode: 0.0.0.0:50010:DataXceiver error processing WRITE_BLOCK operation  src: /0.0.0.0:58294 dst: /0.0.0.0:50010

- hdfs-site.xml
```xml
<property>
    <name>dfs.datanode.max.transfer.threads</name>
    <value>8192</value>
</property>
```

- ulimit -a for user root
- /etc/security/limits.conf
```

*               soft    nofile          65536
*               hard    nofile          65536
*               soft    nproc           4096
*               hard    nproc           4096

```

- Initialization failed for Block pool <registering> (Datanode Uuid unassigned)

- dfs.datanode.data.dir
```
rm -rf /opt/hadoop/hdfs/

```
