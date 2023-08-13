# spark core

- RDD(Resilient Distributed Dataset):弹性分布式数据集
    - 分类：
    - 分区：

- 广播Broadcast
- 累加器Accumulator


---




- DAG Scheduler：根据RDD将DAG划分为多个Stage
- Task Scheduler：将Task分发给Woker Node进行计算


- SparkContext
- SparkConf



---

- Master-Slave架构

Client -> Driver -> Cluster Manager -> Worker Node



---


## 操作
- Transformation：RDD0 -> RDD1
    - Value数据类型
    - Key-Value数据类型

- Action触发Spark提交

