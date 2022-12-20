# kafka

- cluster(集群)
kafka通过zookeeper管理cluster中的broker
- broker():一个cluster包含多个broker
    - leader:选举产生，producer和consumer只与leader交互
    - follower:从leader复制数据
        - pull:拉模式


- topic(主题):一个topic包含多个patition，kafka以patition为读写单位，
    - patition(分区):
        - message(消息):生产者和消费者处理的数据单位
        - offset(偏移量):
        - replication(副本):副本数量等于集群中服务器数量



- stream:

- consumer group:消费者组
- consumer(消费者):
    - pull(拉):轮训
- producer(生产者):
    - push:推模式


- commit(提交):consumer告诉broker消费message在patition中offset
    - auto commit
    - sync commit

- controller:



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


---
- 每个patition包含多组segment；每个segment包含log文件，index文件，timeindex文件；log文件存储message数据，其他文件用于检索消息。
- 每个message都有一个offset，用来表示在patition中的位置
- 多个consumer可以同时消费同一个patition上的不同message

