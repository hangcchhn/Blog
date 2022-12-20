# kafka command




- 主题
```sh
# kafka创建主题
./bin/kafka-topics.sh --bootstrap-server localhost:9092 --create --topic topic-name

# kafka列出主题
./bin/kafka-topics.sh --bootstrap-server localhost:9092 --list

# kafka描述主题
./bin/kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic topic-name
```

- 分别启动生产者和消费者
```sh
# 启动kafka终端生产者
./bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic topic-name

# 启动kafka终端消费者
./bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic topic-name --from-beginning

```


---


```sh

./bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --list

./bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group group-name


```




