# oracle正则表达式


```
-- 模糊匹配
column_name like '%xxx%'

-- 正则表达式匹配
regexp_like(column_name, '')

-- 在给定字符串中搜索某个正则表达式匹配，并返回匹配项的位置。
regexp_instr
-- 搜索某个正则表达式模式并使用替换字符串替换它
regexp_replace
-- 在给定字符串中搜索某个正则表达式模式并返回匹配的子字符串
regexp_substr
```
---

- 校验数字
```sql
select column_name from table_name where trim(translate(nvl(column_name,'-'),'0123456789',' ')) is null;

select column_name from table_name where regexp_like(column_name,'^[0-9]+[0-9]$');

```

---
- `connect by level`
```sql

select regexp_substr(list, '[^,]+', 1, level,'i') as item
from ( select 'red,yellow,blue,green' as list from dual )
connect by level <= length(list) - length(regexp_replace(list, ',', '')) + 1


```
