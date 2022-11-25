

-- 修改表格结构


-- 添加列
alter table table_name add (
    column_name_1 column_type_1, 
    column_name_2 column_type_2,
    ...
);


-- 删除列
alter table table_name drop column_name;
-- 修改列名
alter table table_name change old_column_name new_column_name new_column_type;
-- 修改列类型
alter table table_name modify old_column_name new_column_type;
-- 修改表名
alter table old_table_name rename new_table_name;


-- 修改表的自增主键数值
alter table table_name auto_increment=increment_value;



--------------------------------------------------------------------------------------------------

-- 查询所有表类型
select table_type from information_schema.tables group by table_type;
-- table_type   
-- -------------
-- BASE TABLE   
-- SYSTEM VIEW  
-- VIEW  

-- 查询指定数据库中所有表名
select * from information_schema.tables where table_type='base table' and table_schema='db_name';


-- 查询指定数据库中指定表的所有字段
select * from information_schema.columns where table_schema='db_name' and table_name='tbl_name';


--------------------------------------------------------------------------------------------------


-- 插入语句
insert into table_name (insert_column1, insert_column2,...) values
    (value1_column1, value1_column2,...), 
    (value2_column1, value2_column2,...),
    ...

-- 
insert into table_name(insert_column1, insert_column2,...) 
select


-- 忽略错误插入语句
insert ignore into table_name (insert_column1, insert_column2,...) values
    (value1_column1, value1_column2,...), 
    (value2_column1, value2_column2,...),
    ...;

-- 单个记录更新语句
update table_name 
set update_column1 = update_column1,
    update_column2 = update_column2,
    ...;

-- 批量更新记录语句
update table_name alias_name join (
    select value1_column1 table_column1, value1_column2 table_column2,... from dual union
    select value2_column1 table_column1, value2_column2 table_column2,... from dual union
    ...) temp_table 
on (alias_name.unique_column1 = temp_table.unique_column1 and 
    alias_name.unique_column2 = temp_table.unique_column2 and
    ...)
set alias_name.update_column1 = temp_table.update_column1,
    alias_name.update_column2 = temp_table.update_column2,
    ...;


-- 更新操作流程:先删除,再插入;
replace into table_name (update_column1, update_column2,...) values
    (value1_column1, value1_column2,...), 
    (value2_column1, value2_column2,...),
    ...;



-- 类比 insert into select 
replace into table_name(update_column1, update_column2,...)
select ...

-- 单个记录更新语句
replace into table_name
set update_column1 = update_column1,
    update_column2 = update_column2,
    ...;

--------------------------------------------------------------------------------------------------

