

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

---



