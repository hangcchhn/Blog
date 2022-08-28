# Hadoop配置
> hadoop 2.x

-
- 部署IP:192.168.10.169
- 部署路径:/opt/hadoop/

## 端口说明

- fs.defaultFS=8020


---
### namenode
- dfs.namenode.http.address=50070
- dfs.namenode.https.address=50470

- dfs.secondary.http.address=50090
- dfs.secondary.https.address=50490

### datanode
- dfs.datanode.address=50010
- dfs.datanode.ipc.address=50020

- dfs.datanode.http.address=50075
- dfs.datanode.https.address=50475



### journalnode
- dfs.journalnode.rpc.address=8480
- dfs.journalnode.http.address=8485


---

ZKFC(ZooKeeper FailoverController)
- dfs.ha.zkfc.port=8019



- yarn.nodemanager.localizer.address=8040
- yarn.nodemanager.webapp.address=8042
- yarn.nodemanager.address=8041

- yarn.resourcemanager.address=8032
- yarn.resourcemanager.scheduler.address=8030
- yarn.resourcemanager.resource-tracker.address=8031
- yarn.resourcemanager.admin.address=8033
- yarn.resourcemanager.webapp.address=8088

- mapreduce.jobhistory.address=10020
- mapreduce.jobhistory.webapp.address=19888




## 配置说明
---
### etc/hadoop/core-site.xml
```xml
<configuration>
    <property>
        <name>fs.defaultFS</name>
        <value>hdfs://192.168.10.169:8020</value>
    </property>
    <property>
        <name>hadoop.tmp.dir</name>
        <value>/opt/hadoop/hdfs/tmp</value>
    </property>
    <!-- 缓冲区大小：单位字节 -->
    <property>
        <name>io.file.buffer.size</name>
        <value>4096</value>
    </property>
    <property>
        <name>hadoop.native.lib</name>
        <value>true</value>
    </property>
</configuration>
```
---
### etc/hadoop/hdfs-site.xml
```xml
<configuration>
    <property>
        <name>dfs.namenode.http.address</name>
        <value>192.168.10.169:50070</value>
    </property>
    <property>
        <name>dfs.secondary.http.address</name>
        <value>192.168.10.169:50090</value>
    </property>
    <property>
        <name>dfs.webhdfs.enabled</name>
        <value>true</value>
    </property>
    <property>
        <name>dfs.replication</name>
        <value>1</value>
    </property>
    <property>
        <name>dfs.blocksize</name>
        <value>128m</value>
    </property>
    <property>
        <name>dfs.namenode.name.dir</name>
        <value>file:/opt/hadoop/hdfs/name</value>
    </property>
    <property>
        <name>dfs.datanode.data.dir</name>
        <value>file:/opt/hadoop/hdfs/data</value>
    </property>
</configuration>
```

---
### etc/hadoop/mapred-site.xml
```xml
<configuration>
    <property>
        <name>mapreduce.framework.name</name>
        <value>yarn</value>
    </property>
    <!-- 端口配置 -->
    <property>
        <name>mapreduce.jobhistory.address</name>
        <value>0.0.0.0:10020</value>
    </property>
    <property>
        <name>mapreduce.jobhistory.webapp.address</name>
        <value>0.0.0.0:19888</value>
    </property>
</configuration>
```

---
### etc/hadoop/yarn-site.xml
```xml
<configuration>
    <property>
        <name>yarn.nodemanager.aux-services</name>
        <value>mapreduce_shuffle</value>
    </property>
    <property>
        <name>yarn.nodemanager.aux-services.mapreduce.shuffle.class</name>
        <value>org.apache.hadoop.mapred.ShuffleHandler</value>
    </property>
    <!-- 端口配置 -->
    <property>
        <name>yarn.resourcemanager.address</name>
        <value>0.0.0.0:8032</value>
    </property>
    <property>
        <name>yarn.resourcemanager.scheduler.address</name>
        <value>0.0.0.0:8030</value>
    </property>
    <property>
        <name>yarn.resourcemanager.resource-tracker.address</name>
        <value>0.0.0.0:8031</value>
    </property>
    <property>
        <name>yarn.resourcemanager.admin.address</name>
        <value>0.0.0.0:8033</value>
    </property>
    <property>
        <name>yarn.resourcemanager.webapp.address</name>
        <value>0.0.0.0:8088</value>
    </property>
</configuration>
```
---

# HUE

- hdfs-site.xml
```xml
    <property>
        <name>dfs.webhdfs.enabled</name>
        <value>true</value>
    </property>
    <property>
        <name>dfs.permissions.enabled</name>
        <value>false</value>
    </property>


```

- core-site.xml
```xml
    <property>
        <name>hadoop.proxyuser.hue.hosts</name>
        <value>*</value>
    </property>
    <property>
        <name>hadoop.proxyuser.hue.groups</name>
        <value>*</value>
    </property>
    <property>
        <name>hadoop.proxyuser.hdfs.hosts</name>
        <value>*</value>
    </property>
    <property>
        <name>hadoop.proxyuser.hdfs.groups</name>
        <value>*</value>
    </property>
```

- httpfs-site.xml
```
<configuration>
    <property>
        <name>httpfs.proxyuser.hue.hosts</name>
        <value>*</value>
    </property>
    <property>
        <name>httpfs.proxyuser.hue.groups</name>
        <value>*</value>
    </property>
</configuration>

```
---

- hdfs-site.xml
```xml
    <property>
        <name>dfs.namenode.handler.count</name>
        <value>10</value>
        <!-- 20logN;N集群数列 -->
    </property>

```
---
## 垃圾回收
- fs.trash.interval > fs.trash.checkpoint.interval
- 默认配置是0，0表示禁用
- core-site.xml
```xml
    <!-- 间隔：单位分钟 -->
    <!-- <property>
        <name>fs.trash.interval</name>
        <value>0</value>
    </property>
        <property>
        <name>fs.trash.checkpoint.interval</name>
        <value>0</value>
    </property> -->
```