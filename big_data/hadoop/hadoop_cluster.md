

# Hadoop Cluster

---
- CPU:2-core
- MEM:3072MB
---
- CentOS 7.x
- java-11.0.9
- scala-2.12.14
- hadoop-3.0.3
- spark-3.0.3

---
- /etc/hosts
```
192.168.10.201    cent01
192.168.10.202    cent02
192.168.10.203    cent03
```
- /etc/ssh/sshd_config
```
PermitRootLogin no
UsePAM no
PasswordAuthentication no
RSAAuthentication yes
PubkeyAuthentication yes
```

- ~/.ssh/config
```
Host cent01
  HostName cent01
  User root
  IdentityFile ~/.ssh/id_rsa-remote-ssh
Host cent02
  HostName cent02
  User root
  IdentityFile ~/.ssh/id_rsa-remote-ssh
Host cent03
  HostName cent03
  User root
  IdentityFile ~/.ssh/id_rsa-remote-ssh
```

- /etc/profile
```
export HADOOP_HOME=/opt/hadoop/hadoop-3.0.3
export PATH=$HADOOP_HOME/bin:$PATH

export HADOOP_HDFS_HOME=$HADOOP_HOME
export HADOOP_YARN_HOME=$HADOOP_HOME
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop

export HDFS_NAMENODE_USER=root
export HDFS_DATANODE_USER=root
export HDFS_SECONDARYNAMENODE_USER=root

export YARN_RESOURCEMANAGER_USER=root
export YARN_NODEMANAGER_USER=root
```

---

- hadoop-env.sh
```
#export JAVA_HOME=
export JAVA_HOME=/opt/java/jdk-11.0.9


```
- workers
```
cent01
cent02
cent03

```

- core-site.xml
```xml
<configuration>
    <property>
        <name>fs.defaultFS</name>
        <value>hdfs://cent01:9820</value>
    </property>
    <property>
        <name>hadoop.tmp.dir</name>
        <value>/opt/hadoop/tmp</value>
    </property>
</configuration>
```
- hdfs-site.xml
```xml
<configuration>
    <property>
        <name>dfs.secondary.http.address</name>
        <value>cent01:9868</value>
    </property>
    <property>
        <name>dfs.replication</name>
        <value>3/value>
    </property>
    <property>
        <name>dfs.namenode.name.dir</name>
        <value>file:/opt/hadoop/namenode</value>
    </property>
    <property>
        <name>dfs.datanode.data.dir</name>
        <value>file:/opt/hadoop/datanode</value>
    </property>
</configuration>

```
- mapred-site.xml
```xml
<configuration>
    <property>
        <name>mapreduce.framework.name</name>
        <value>yarn</value>
    </property>



</configuration>

```
- yarn-site.xml
```xml
<configuration>
    <property>
        <name>yarn.nodemanager.aux-services</name>
        <value>mapreduce_shuffle</value>
    </property>
    <property>
        <name>yarn.resourcemanager.hostname</name>
        <value>cent01</value>
    </property>
</configuration>
```

```sh
cd /opt/hadoop/hadoop-3.0.3/etc/hadoop

scp -r workers hadoop-env.sh core-site.xml hdfs-site.xml mapred-site.xml yarn-site.xml root@192.168.10.202:$PWD

scp -r workers hadoop-env.sh core-site.xml hdfs-site.xml mapred-site.xml yarn-site.xml root@192.168.10.203:$PWD



```
-
```sh
mkdir -p /opt/hadoop/tmp
mkdir -p /opt/hadoop/namenode
mkdir -p /opt/hadoop/datanode

hdfs version
hdfs namenode -format


./sbin/start-dfs.sh
./sbin/start-yarn.sh

hdfs dfsadmin -report
```
- hdfs:http://cent01:9870
- http://cent01:8088

spark-shell
scala>
val txtFile = sc.textFile("hdfs://cent01:9820/spark/word.txt")
val wordCount = txtFile.flatMap(_.split(" ")).map((_,1)).reduceByKey(_ + _)
wordCount.collect
wordCount.saveAsTextFile("hdfs://cent01:9820/spark/count")

```























