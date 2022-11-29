
# Oracle数据库


- all_*
```sql


-- 查询所有用户
select * from all_users;
-- 查询所有表格
select * from all_tables;


```

- user_*

```sql
-- 查询当前用户的所有表格
select * from user_tables;

-- 列
select utc.column_name from user_tab_columns utc
where utc.table_name = 'table_name'


-- 索引
select * from user_indexes ui
inner join user_ind_columns uic
on ui.index_name = uic.index_name
and ui.table_name = uic.table_name
where ui.table_name = upper('table_name')
and ui.index_type = 'NORMAL' -- 普通索引
and ui.uniqueness = 'NONUNIQUE'
and ui.uniqueness = 'UNIQUE' -- 唯一索引
and ui.uniqueness = 'BITMAP' --

-- 约束
select * from user_constraints uc
inner join user_cons_columns ucc
on uc.constraint_name = ucc.constraint_name
and uc.table_name = ucc.table_name
where uc.table_name = upper('table_name')
and uc.constraint_type = 'P' -- 主键约束(Primary)
and uc.constraint_type = 'R' -- 外键约束(Foreign=Referenced)
and uc.constraint_type = 'U' -- 唯一约束(Unique)
and uc.constraint_type = 'C' -- 校验约束(Check):非空



-- 源码：按行存储
select us.name, us.type, us.line, us.text
from user_source us
where lower(us.text) like '%keyword%'
and us.type = 'PROCEDURE' -- 存储过程
-- and us.type = 'FUNCTION' -- 函数
-- and us.type = 'TRIGGER' -- 触发器


select us.text from user_source us
where us.name = upper('object_name')
and us.type = 'PROCEDURE'
-- and us.type = 'FUNCTION' -- 函数
-- and us.type = 'TRIGGER' -- 触发器
order by us.line asc




```