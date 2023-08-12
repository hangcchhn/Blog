# Spark


- Spark框架是由Scala语言实现的
- 使用Akka框架实现通信

- 内存计算

---
## 组件

- Spark Core
- Spark Streaming
- Spark SQL
- MLlib：机器学习ML
- GraphX：图


---
- DAG(Directed Acyclic Graph)：有向无环图
- RDD(Resilient Distributed Dataset)：弹性分布式数据集




---


- Application
- Driver


- Cluster Manager
    - Standalone
    - Hadoop YARN
    - Apache Mesos

- Worker Node
- Executor
    - Executor Backend
- Job：
    -
- Stage：每个Job分为多组Task，每组Task被称为一个Stage

- Task：分为ShuffleMapTask和ResultTask

- Partition




---

## 运行模式

- Local

- Standalone

- YARN

- Mesos

- Cloud


---

## 容错机制

-Lineage

- CheckPoint
    - CheckPoint Data
    - Logging Update


---

- Shuffle
    - Shuffle Write
    - Shuffle Fetch

---

- 支持Java/Scala语言API
- Python语言PySpark模块
- R语言SparkR模块




---


- Tachyon分布式文件系统