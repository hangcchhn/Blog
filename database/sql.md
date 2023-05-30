# SQL
> Structured Query Language

- DDL:数据定义语言(Data Definition Language)
    - create
    - drop
    - alter
- DML:数据操纵语言(Data Manipulation Language)
    - insert
    - delete
    - udpate
    - select
- DCL:数据控制语言(Data Control Language)
    - grant
    - revoke

- 主键:Primary Key, PK
- 外键:Foreign Key, FK

---
# SQL执行顺序

1. from
2. join on
3. where
4. group by
5. having
6. select
7. distinct
8. order by
9. limit

group by和having之间执行聚合函数(aggregate function)

---

## SPL
> Structured Process Language

- 解释型语言
- 支持动态数据结构
- 支持丰富的集合运算函数
- 兼容SQL

- esProc



---

## 大表优化

- 索引

- 缓存

- 读写分离：主库写，从库读，主从复制

- 分表
    - 垂直分表：分列
    - 水平分表：分行

- 分库：
    - redis生成
    - Twitter的snowflake算法
    - 美团的Leaf分布式ID生