

---
## 伪列
> rowid,rownum


### 对比
- rowid是插入记录时生成的物理地址
- rownum是查询记录时生成行号


---

- oralce数据库sql脚本中使用两个连续的单引号表示字符串中的单引号

```sql


insert into table_name(column_name) values (' and id < ''id'' and flag = 1 ')


select ''''||column_name||''',' from table_name

-- 'column_value',


```

---


- 闪回查询

```sql

select * from table_name
as of timestamp to_timestamp('', 'yyyy-mm-dd hh24:mi:ss')
where ...


--

select current_scn from v$database;

select * from table_name
as of scn xxx

-- 版本
select * from table_name
versions between timestamp minvalue and maxvalue
where ...


versions between timestamp(systimestamp - interval '15' minute) and maxvalue


-- 用户回收站
select * from user_recyclebin;

OBJECT_NAME


select * from "OBJECT_NAME"

-- 清空回收站
purge recyclebin;


show parameter recycle;


```