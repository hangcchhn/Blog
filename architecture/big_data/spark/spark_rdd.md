# Spark RDD


- 分区(Partition)：

- 只读(read-only)
- 容错


- Value数据类型
- Key-Value数据类型


- 转换Transformation：会在一个已经存在的 RDD 上创建一个新的 RDD
    - map
- 行动Action
    - reduce


- 惰性求值：转换操作并不会立即执行，直到遇到行动才会执行





### 属性
- 分区列表Partition List

- 计算函数Compute Function

- 依赖关系Dependencies：
    - 窄依赖(Narrow Dependency)：每个父分区最多只有一个子分区
        - map、filter、union
    - 宽依赖(Wide Dependency)
        - groupByKey、reduceByKey、sortByKey
- 分区器Partitioner

- 首选位置Preferred Location

