# HBase
> Hadoop DataBase



- 分布式数据库
- 列式存储
- 稀疏



- 以Google的BigTable为蓝本
- 以Key-Value键值对形式存储
---

## 组件

- Zookeeper服务器
- Master服务器
- Region服务器
    - HRegionServer

- root表：根数据表
    - 计算meta表所有Region
- ：元数据表
    - 存储Region和Region服务器的映射关系



---
## 数据模型

- 表Table
- 列Column
- 列族：Column Family
- 列限定符：Column Qualifier


- 单元格Cell
- 时间戳TimeStamp
    - 多版本：相同行键RowKey的行数据按时间戳TimeStamp倒序，默认取最新的

- 行键RowKey

- 分区Region
    - 一张表Table分为多个分区Region



---


- MemStore
- BlockCache

- StoreFile

- Flush

- WAL(Write Ahead Log)
- HLog