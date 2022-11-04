# Hadoop版本

---
## Hadoop 1.x:

- 分布式文件系统HDFS(Hadoop Distributed File System)
    - NameNode
    - Secondary NameNode
    - DataNode
    - JournalNode

- 分布式计算引擎MapReduce
优势在于分布式，海量数据
- JobTracker
- TaskTracker


JobClient把所有Hadoop中的Job信息告诉给JobTracker
JobClient. runJob()实现把input进行split操作分发给map

TaskTracker包含MapTask和ReduceTask

- 工作流程：
    - 1.input:
    - 2.split:
    - 3.map:
    - 4.shuffle:
    - 5.reduce:
    - 6.output:


- 数据仓库工具Hive
- 分布式数据库Hbase

## Hadoop 2.x:

- 分布式资源调度YARN(Yet Another Resource Negotiator)
    - ResourceManager
    - NodeManager


Master-Slave架构
由ApplicationMaster，ResourceManager和NodeManager组成

