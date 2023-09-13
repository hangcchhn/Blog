# Spark组件


---
- DAG(Directed Acyclic Graph)：有向无环图
    - 任务编排
- RDD(Resilient Distributed Dataset)：弹性分布式数据集
    - 内存计算


- DataFrame
    - Schema:Name,Legs,Size;
    - Data

- Dataset

- Scala:`Dataset[Row] DataFrame `
- Java:`Dataset<Row> DataFrame `

---


- Application
- Driver


- Cluster Manager
    - Standalone
    - Hadoop YARN
    - Apache Mesos

- Worker Node
- Executor
    - ExecutorBackend
    - CoarseGrainedExecutorBackend
- Scheduler
    - SchedulerBackend
    - ClusterBackend

- Job：
    -
- Stage：每个Job分为多组Task，每组Task被称为一个Stage
    - 根据Shuffle划分Stage

    - ShuffleMapStage
    - ResultStage

- Task：分为ShuffleMapTask和ResultTask
- 任务集
- Partition



- 构建DAG
- 划分Stage
- 提交Task


---
### Spark Shuffle

- hash-base
- sort-base


---

- spark-shell
- spark-submit

---
## 数据源

- HDFS
- S3
- HBase
- ElasticSearch
- Cassandra
- MongoDB
- MySQL
- Kafka
- Flume
- Kinesis