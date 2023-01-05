

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


---

## 行列转换

- 转置

$$

M^T = N
\\
M = N^T

$$


| M | A | B |
| - | - | - |
| X | 1 | 2 |
| Y | 3 | 4 |
| Z | 5 | 6 |

| N | X | Y | Z |
| - | - | - | - |
| A | 1 | 3 | 5 |
| B | 2 | 4 | 6 |


- pivot/unpivot

```sql
--  M -> N
with m as (
    select 'X' as M, 1 as A, 2 as B from dual union all
    select 'Y' as M, 3 as A, 4 as B from dual union all
    select 'Z' as M, 5 as A, 6 as B from dual
)
, t as (
    select M, N, T from m
    unpivot(T for N in (A, B))
)
select * from t
pivot(max(T) for M in (
    'X' as "X",
    'Y' as "Y",
    'Z' as "Z"
))
order by N
;

---
--  M -> N -> M
with m as (
    select 'X' as M, 1 as A, 2 as B from dual union all
    select 'Y' as M, 3 as A, 4 as B from dual union all
    select 'Z' as M, 5 as A, 6 as B from dual
)
, t as (
    select M, N, T from m
    unpivot(T for N in (A, B))
)
, n as (select * from t
pivot(max(T) for M in ('X' as "X",'Y' as "Y",'Z' as "Z"))
order by N
)
, s as (
  select N, M, S from n
  unpivot(S for M in (X, Y, Z))
)
select * from s
pivot(max(S) for N in ('A' as "A",'B' as "B"))
order by M

```
