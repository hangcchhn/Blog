# Oracle

```sql

-- 查询oracle数据库关键字
select * from v$reserved_words order by keyword asc;

-- 查询oracle数据库版本
select * from v$version;

-- 查询系统配置参数
select * from v$parameter;

-- 查询进程总数
select count(*) from v$process;

-- 查询会话总数
select count(*) from v$session;
-- 查询激活的会话总数
select count(*) from v$session where status = 'ACTIVE';

-- 查询单个用户的会话总数
select username,count(username) from v$session
where username is not null group by username;


```

---
```sql
--
select s.sid, s.serial#, s.username, t.sql_text, t.sql_fulltext
-- , 'alter system kill session '''||s.sid||','||s.serial#''';'
from v$process p
inner join v$session s
on s.paddr = p.addr
and s.status = 'ACTIVE'
inner join v$sql t
on s.sql_hash_value = t.hash_value




```
