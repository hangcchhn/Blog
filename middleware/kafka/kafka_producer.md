# kafka producer
> 生成者


- Metadata
    - Cluster
        - node:topic,partition
- Partitioner
- RecordAccumulator
- NetworkClient
    - Selector(java nio)
- Sender

---


- KafkaProducer线程

KafkaProducer是支持多线程并发


经过过滤器和拦截器获取元数据


使用Partitioner选择partition
将消息存入RecordAccumulator缓冲区

在RecordAccumulator缓冲区中，一个tipoc的partition对应一个batch队列

batch表示消息


- Sender线程
Sender类实现Runnable接口

Sender线程从RecordAccumulator缓冲区遍历batch队列，寻找准备好的node

node表示cluster中的broker

每个node对应一个channel


---

---

## 应答

- acks
    - 0:producer发送message不等待broker确认
    - 1:producer发送message只等待leader确认
    - all:producer发送message要等待follower从leader复同步