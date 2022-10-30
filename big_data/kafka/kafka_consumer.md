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

