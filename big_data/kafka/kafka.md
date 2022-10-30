# kafka

- cluster
kafka通过zookeeper管理cluster中的broker
- broker:一个cluster包含多个broker
    - leader:选举产生
    - follower:
        - pull:拉模式


- topic:主题
    - patition(分区):
        - offset(偏移量):
        - replication(副本):副本数量等于集群中服务器数量

- stream:流

- consumer group:消费者组
- consumer:消费者
    - pull:拉模式
- producer:生产者
    - push:推模式




---


- zookeeper(注册中心):
    - producer不在zookeeper中注册
    - consumer要在zookeeper中注册

---
- AR(Assigned Replicas)

- ISR(In Sync Replicas):记录follower的列表，leader可以操作
- OSR(Out of Sync Replicas)

- HW(High Watermark)
- LEO(Log End Offset)
