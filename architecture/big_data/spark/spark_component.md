# Spark组件


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



---
### Spark Shuffle

- hash-base
- sort-base