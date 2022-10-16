# kafka

- cluster
kafka通过zookeeper管理cluster中的broker
- broker
一个cluster包含多个broker


- topic

- stream

- consumer group
- consumer
- producer


---
## kafka config
- zookeeper.properties


- server.properties



- 主题
```sh
# kafka创建主题
bin/kafka-topics.sh --bootstrap-server localhost:9092 --create --topic test

# kafka列出主题
bin/kafka-topics.sh --bootstrap-server localhost:9092 --list

# kafka描述主题
bin/kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic test
```

- 分别启动生产者和消费者
```sh
# 启动kafka终端生产者
bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic test

# 启动kafka终端消费者
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning

```


