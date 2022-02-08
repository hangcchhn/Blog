# Java Batch Stream

## 批量处理batch
- 有限数据，数据量大
- 由于数据量大导致处理时间较长，适用于对时间要求不高的场合

### 1.spring batch

### 2.apache hadoop
- HDFS
- YARN
- MapReduce

## 流式处理stream
- 无限不断增长数据集合
- 足够快、低延时

### apache strom
- 实时处理：低延迟->低吞吐
- Storm Trident：微批处理

### apache samza
- 配合apache kafka处理

## 批流框架

### apache spark
- DAG：有向无环图Directed Acyclic Graph
- RDD：弹性分布式数据集Resilient Distributed Dataset
- Spark Streaming：流式处理（micro-batch：微批处理）

- 批处理由SparkSql实现
- 流处理由SparkStreaming实现。

### apache flink
- Lambda架构
- Kappa架构
