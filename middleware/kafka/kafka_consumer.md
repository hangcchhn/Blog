# kafka consumer

## 提交
> commit


### 自动提交
> auto commit

- enable.auto.commit=true:
consumer会在调用poll()后每间隔auto.commit.interval.ms=5秒commit一次offset

- 消息重复消费:
当consumer调用poll()处理message时，如果在没有commit给broker该message的offset之前kafka进行了重平衡，那么可能导致该message被重复消费


---


- 同一个消费者组的消费者可以处理同一主题下不同分区的消息
- 不同消费者组内的消费者可以处理同一主题下相同分区的消息

---

如果消费者组中有个消费者下线，整个消费者组会再平衡(rebalance)

每个partition内的消息会分发给所有的消费者组
每个消费者组中只有一个consumer能消费消息




---

- spring-kafka

```java

public class TopicListener{

    @KafkaListener(topics = "#{'${custom.kafka.topics}'.split(',')}")
    public void listen(ConsumerRecord<String, String> consumerRecord, Acknowledgment acknowledgment) {

    }

}

```

```ini
spring.kafka.bootstrap-servers=localhost:9092
# 生产者
spring.kafka.producer.acks=1
spring.kafka.producer.key-serializer=org.apache.kafka.common.serialization.StringSerializer
spring.kafka.producer.value-serializer=org.apache.kafka.common.serialization.StringSerializer
# 消费者

spring.kafka.consumer.group-id=kafka-start-group
spring.kafka.consumer.auto-offset-reset=earliest
spring.kafka.consumer.enable-auto-commit=false


spring.kafka.consumer.key-deserializer=org.apache.kafka.common.serialization.StringDeserializer
spring.kafka.consumer.value-deserializer=org.apache.kafka.common.serialization.StringDeserializer

custom.kafka.topics=test-topic

```
