# Hive

- Facebook用于解决海量结构化日志的数据统计
- 基于Hadoop的数据仓库工具，将结构化的数据文件映射为表，并提供类SQL查询功能

- HQL(Hive SQL)：类SQL的查询语言

- 将SQL操作转化为MapReduce任务在Hadoop上运行


---

## 数据模型

- 数据库

- 表Table
    - 内部表
    - 外部表

- 视图View
- 分区Partition
- 桶Bucket

- 元数据Metastore
    - 默认存储在自带的Derby数据库中，推荐使用MySQL存储元数据


---

## 体系架构
- 客户端Client
    - CLI
    - JDBC/ODBC
    - HWI(Hive Web Interface)
    - Thrift Server：跨语言访问支持，可选


- 驱动器Driver
    - 编译器Compiler
    - 优化器Optimizer
    - 执行器Executor


---

## 部署

- 内嵌模式

- 本地模式

- 远程模式