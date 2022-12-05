
# kafka configuration

## config/zookeeper.properties
```properties
# 监听所有IP
listeners=PLAINTEXT://0.0.0.0:9092
# 如果advertised.listeners没有配置，那么就引用listeners配置
# 如果listeners配置的是多个IP，advertised.listeners配置必须是准确的IP
advertised.listeners=PLAINTEXT://192.168.10.169:9092


```
---
## config/server.properties
```properties
# 副本数量
default.replication.factor

# 分区数量
num.partitions

# 日志保留策略：基于时间和基于大小
log.retention.hours
log.retention.bytes
```


##  config/consumer.properties


```properties


```


##  config/producer.properties


```properties


```
