
# MySQL视图
> view

- 视图是由查询结果形成的一张虚拟表,在查询语句中表和视图一样使用

- 使用视图：简化查询过程，方便权限控制


---

```sql
show views\G;

desc viem_name;


create view viem_name as select_sql

alter view view_name as select_sql

drop view [if exists] view_name
```
