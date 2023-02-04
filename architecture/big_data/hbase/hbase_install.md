# HBase install


- /etc/profile
```sh
export HBASE_HOME=/opt/hbase/hbase-1.4.14
export PATH=$PATH:$HBASE_HOME/bin

```

- conf/hbase-env.sh

```sh
export JAVA_HOME=/opt/java/jdk1.8.0_202
export HBASE_MANAGES_ZK=false

```

```xml

    <property>
        <name>hbase.rootdir</name>
        <value>hdfs://demo:8020/hbase</value>
    </property>
    <property>
        <name>hbase.tmp.dir</name>
        <value>/opt/hbase/hbase-1.4.14/tmp</value>
    </property>
    <property>
        <name>hbase.master.info.port</name>
        <value>16010</value>
    </property>
    <property>
        <name>hbase.cluster.distributed</name>
        <value>true</value>
    </property>
    <property>
        <name>hbase.unsafe.stream.capability.enforce</name>
        <value>false</value>
    </property>
    <property>
        <name>hbase.zookeeper.quorum</name>
        <value>demo:2181</value>
    </property>
    <property>
        <name>hbase.zookeeper.property.clientPort</name>
        <value>2181</value>
    </property>
    <property>
        <name>hbase.zookeeper.property.dataDir</name>
        <value>/opt/hbase/hbase-1.4.14/data</value>
    </property>

```



- ./bin/start-hbase.sh
    - http://192.168.10.171:16010/

---

```sh

./bin/hbase shell


list_namespace

list


```