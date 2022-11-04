

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