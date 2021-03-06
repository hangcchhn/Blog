# 自增主键
> auto incerment primary key

字段user_ids是表t_user的自增主键
```sql
insert into t_user(user_id, user_name) values('id', 'name');
insert into t_user(user_name) values('name');
```
---
## Oracle
> Oracle 12c

- `id number generated always [ on null ] as identity`
- `id number generated by default [ on null ] as identity`


- 相同点：
    - 都可以不指定该列进行插入
    - 都不能在该列中插入NULL值
- 不同点：
    - always:不能指定具体值插入，不能更新该列
    - by default:可以指定具体值插入，可以更新该列的值，但不能更新为NUL

自增主键对应的序列是系统生产的，不能手动修改序列的属性
只能通过删除表来删除该表的自增主键对应的系统生产的序列
###
```sql
--  identity columns 列自增长

create table t_user
(
    user_id number generated by default as identity,
    user_name varchar2(32) not null,
    primary key (user_id)
)

-- 查询用户对象
select object_name, object_type from user_objects;


-- 根据名称查询table的dll表结构定义
select dbms_metadata.get_ddl('TABLE','T_USER') from dual;


select table_name, column_name, generation_type, identity_options
from all_tab_identity_cols where owner = 'CHENCH';

select SEQUENCE_NAME, MIN_VALUE, MAX_VALUE, INCREMENT_BY, CYCLE_FLAG, ORDER_FLAG, CACHE_SIZE, LAST_NUMBER
from dba_sequences where SEQUENCE_OWNER = 'CHENCH';

select ISEQ$$_73589.nextval from dual;

alter sequence ISEQ$$_73589 increment by 41;
-- ORA-32793: 无法变更系统生成的序列

-- 先创建
create table t_user_1
(
    user_id number generated by default as identity,
    user_name varchar2(32) not null,
    constraint pk_user_1  primary key (user_id)
)

insert into t_user_1 (user_id, user_name) values (1, 'hn');

-- 再修改
alter table t_user_1 modify user_id
generated always as identity (start with limit value);

-- 删除
alter table t_user_1 modify user_id drop identity;










```




---
## MySQL

---
## MyBatis


