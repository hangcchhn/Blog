# db sql copy 
> 数据库复制数据

## 一、数据迁移
> 类型不同的两个数据库之间的复制数据

## 二、数据同步
> 相同类型的两个数据库之间的复制数据

## 三、数据备份
> 相同类型的同一数据库中不同表之间的复制数据

### create table like
> 复制表结构

``` sql
create table new_tbl like old_tbl
```

### create table as
> 复制表结构和数据

``` sql
create table new_tbl as old_tbl
```

### select into from
> 创建新表用来存储查询结果

``` sql
-- 复制表结构
select * into new_tbl from old_tbl where 0=1
```


### insert into select
> 将查询结果插入已存在的表中

``` sql
-- 数据全复制
insert into clone_table select * from old_tbl where 0!=1
```

## 数据库类型
### mysql
> mariadb

- 不支持`select into from`

### oracle
> inspur(国产浪潮K-DB)
- 不支持`create table like`
- 不支持`insert into select`

### sqlserver
> sybase

- 不支持`create table as`
- 不支持`create table like`
    - sqlserver编辑语句都报错
    - sybase虽然运行不报错但也没结果）

### postgresql

### sqlite

