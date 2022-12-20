# kafka eagle

- efak(Eagle For Apache Kafka)

---

```sh

export JAVA_HOME=/usr/java/jdk-11.0.16
export PATH=$PATH:$JAVA_HOME/bin

export KE_HOME=/usr/kafka_eagle/efak-web-3.0.0
export PATH=$PATH:$KE_HOME/bin


./bin/ke.sh start


```

- MySQL
```sql
create database ke;


```
- conf/system-config.properties
```ini
# zookeeper
efak.zk.cluster.alias=cluster1
efak.zk.cluster.alias=cluster1

cluster1


```

- kafka jmx:kafka-server-start.sh

```sh
if [ "x$KAFKA_HEAP_OPTS" = "x" ]; then
    export KAFKA_HEAP_OPTS="-server -Xms1G -Xmx1G -XX:PermSize=128m -XX:+UseG1GC -XX:MaxGCPauseMillis=300 -XX:ParallelGCThreads=4 -XX:ConcGCThreads=4 -XX:InitiatingHeapOccupancyPercent=60"
    export JMX_PORT="9999"
    # export KAFKA_HEAP_OPTS="-Xmx1G -Xms1G"
fi


```