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

```sql
-- 插入
insert into table_name(column_name,) values(column_value,)

-- 更新
update table_name set column_name = update_value where column_name = origin_value

-- 删除
delete from table_name where column_name = column_value

```


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