# big data
> 大数据

---
## hadoop
> hadoop2
- MapReduce
- HDFS
- YARN

### HBase

### Hive

### Pig

### Spark

### Kafka


---
## 批量处理
> batch
- 有限数据，数据量大
- 由于数据量大导致处理时间较长，适用于对时间要求不高的场合

## 流式处理
> stream
- 无限不断增长数据集合
- 足够快、低延时

## 批流框架

### spring batch

### apache hadoop
- HDFS
- YARN
- MapReduce

### apache strom
- 实时处理：低延迟->低吞吐
- Storm Trident：微批处理

### apache samza
- 配合apache kafka处理



### apache spark
- DAG：有向无环图Directed Acyclic Graph
- RDD：弹性分布式数据集Resilient Distributed Dataset
- Spark Streaming：流式处理（micro-batch：微批处理）

- 批处理由SparkSql实现
- 流处理由SparkStreaming实现。


### apache flink
- Lambda架构
- Kappa架构


---
## version

scala2.12.16 要求 jdk1.8u202

hadoop2.7.7


spark3.1.3


---
## CDH
> Cloudera Hadoop

- CDP(Cloudera Data Platform)
- Cloudera Manager