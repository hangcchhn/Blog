# Oracle


- v$开头的视图

```sql

-- 查询oracle数据库关键字
select * from v$reserved_words order by keyword asc;

-- 查询oracle数据库版本
select * from v$version;

-- 查询系统配置参数
select * from v$parameter;


```

---

```sql

select s.sid, s.serial#
, s.username
, s.machine
, s.program
, s.paddr -- v$process.addr
, s.sql_hash_value -- v$sql.hash_value
, s.prev_sql_addr -- v$sqlarea.address
, s.sql_addr -- v$sqltext.address
from v$session s -- 会话
where
s.status = 'ACTIVE' -- 状态:ACTIVE; INACTIVE
;

alter system kill session '''||s.sid||','||s.serial#''';

select p.addr

from v$process p -- 进程
;

select
sql_text, sql_fulltext
from v$sql;


select t.address, a.hash_value
, sql_text
from v$sqltext t
order by t.price -- 序号从0开始

select a.address
, a.sql_text, a.sql_fulltext
from v$sqlare a



```

---
```sql
--

select s.sid, s.serial#,
s.username,
t.sql_text, t.sql_fulltext
from v$process p
inner join v$session s
on s.paddr = p.addr
and s.status = 'ACTIVE'
inner join v$sql t
on s.sql_hash_value = t.hash_value

--

select s.sid, s.serial#,
s.username,
s.user#,
s.machine,
l.locked_mode,
l.oracle_username,
t.sql_text,
from v$session s,
inner join v$locked_object lo
on l.session_id = s.sid
inner join v$sqlarea t
on s.prev_sql_addr = t.address



```
