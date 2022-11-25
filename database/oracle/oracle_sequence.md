
# 序列加触发器实现自增主键
> oracle 11g

```sql


-- sequence trigger

-- 序列:sequence
-- 当前值:sequence.currval
-- 下一个:sequence.nextval

-- 序列sequence只有先使用下一个nextval后才能使用当前值currval


-- 1.创建表格
create table t_user
(
    user_id number(16) not null primary key,
    user_name varchar2(16) not null
);

create table t_user
(
    user_id number(16) not null,
    user_name varchar2(16) not null,
    constraint pk_user primary key (user_id)
);

-- 2.创建序列
create sequence s_user
minvalue 1
maxvalue 999999999999
-- nomaxvalue
--cache 10
nocache
nocycle
noorder
start with 1
increment by 1;

-- 3.创建或替换触发器
create or replace trigger user_trg
before insert on t_user for each row
begin
    select s_user.nextval into:new.user_id from dual;
end;

-- 4.插入数据
insert into t_user (user_name) values ('name');

-- 5.查询数据
select * from t_user;

```

