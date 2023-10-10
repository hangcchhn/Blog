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



---
## 子查询部分(subquery factoring)
> 公用表表达式(CTE)

在查询之前构建成一张临时表，也可以当作虚拟视图，生命周期是整个会话都存在
优点：清晰易读，一次查询，多次使用，减少消耗

- 单表
```sql
with temp_table as (
    select column_name from table_name
)
select ... from temp_table
```
- 多表
```sql
with tmp0_table as (
    select column_name from table_name
), tmp1_table as (
    select column_name from tmp0_table

) select column_name from tmp2_tbl
```

```sql

-- 查询
select table_alias.column_name1
    , table_alias.column_name2
    , table_alias.column_name3
from table_name table_alias

-- 插入
insert into table_name(column_name,) values(column_value,)

-- 更新
update table_name set column_name = update_value where column_name = origin_value

-- 删除
delete from table_name where column_name = column_value




```