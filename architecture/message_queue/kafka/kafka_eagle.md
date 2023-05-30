# kafka eagle

- efak(Eagle For Apache Kafka)

---
- /etc/profile
```sh

export JAVA_HOME=/opt/java/jdk1.8.0_202
export PATH=$JAVA_HOME/bin:$PATH

export KE_HOME=/opt/kafka-eagle/kafka-eagle-1.4.8
export PATH=$KE_HOME/bin:$PATH

```

- conf/system-config.properties
```ini
# zookeeper
efak.zk.cluster.alias=cluster1
kafka.eagle.zk.cluster.alias=cluster1

cluster1.zk.list=localhost:2181

```
---
- kafka jmx:kafka-server-start.sh

```sh
if [ "x$KAFKA_HEAP_OPTS" = "x" ]; then
    export KAFKA_HEAP_OPTS="-server -Xms1G -Xmx1G -XX:PermSize=128m -XX:+UseG1GC -XX:MaxGCPauseMillis=300 -XX:ParallelGCThreads=4 -XX:ConcGCThreads=4 -XX:InitiatingHeapOccupancyPercent=60"
    export JMX_PORT="9999"
    # export KAFKA_HEAP_OPTS="-Xmx1G -Xms1G"
fi

```
- MySQL
```sql
create database ke;

```


---
- `./bin/ke.sh start`
- http://ip:8048/ke
- admin/123456