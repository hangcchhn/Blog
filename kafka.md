# Kafka
> 消息队列
> 日志
> zookeeper


## 安装配置

### 单机安装

```
# 解压
tar -zxvf kafka_2.11-2.1.1.tgz
# 复制
cp -rf ./kafka_2.11-2.1.1/ /usr/kafka/
# 路径
cd /usr/kafka/

# 启动
# zookeeper
./bin/zookeeper-server-start.sh config/zookeeper.properties
# kafka
./bin/kafka-server-start.sh config/server.properties

# 主题
# create
./bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test
# list
./bin/kafka-topics.sh --list --zookeeper localhost:2181

# 生产者
./bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test

# 消费者
./bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning

```

