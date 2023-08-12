# spark core

- RDD(Resilient Distributed Dataset):弹性分布式数据集
    - 分类：
    - 分区：

- 广播Broadcast
- 累加器Accumulator


---


- SparkContext
    - RDD
    - DAG
    - DAG Scheduler：根据RDD将DAG划分为多个Stage
    - Task Scheduler：将Task分发给Woker Node进行计算
    - SparkEnv

-


- Master-Slave

Client -> Driver -> Cluster Manager -> Worker Node



---


## 操作
- Transformation：RDD0 -> RDD1
    - Value数据类型
    - Key-Value数据类型

- Action触发Spark提交

