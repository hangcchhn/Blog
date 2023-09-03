# Spark RDD


- 分区(Partition)：

- 只读(read-only)
    - immutable

- 并行(parallel)

- 容错


- Value数据类型
- key-value类型


- 转换Transformation：会在一个已经存在的 RDD 上创建一个新的 RDD
    - map
- 行动Action
    - reduce


- 惰性求值：转换操作并不会立即执行，直到遇到行动才会执行



---

## 容错机制



- CheckPoint
    - CheckPoint Data
    - Logging Update


---

- Shuffle
    - Shuffle Write
    - Shuffle Fetch



### 属性



- 分区列表
    - `def getPartitions`

- 计算函数
    - `def compute`

- 依赖关系
    - `def getDependencies`

---
#### 可选
- 优先位置
    - `def getPreferredLocations`

- 分区函数
    - `val partitioner`
    - `HashPartitioner`
    - `RangePartitioner`


---




---

- 血统Lineage
- 依赖关系Dependencies：
    - 窄依赖(Narrow Dependency)：每个父分区最多只有一个子分区
        - map、filter、union
    - 宽依赖(Wide Dependency)
        - groupByKey、reduceByKey、sortByKey