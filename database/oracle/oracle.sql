

-- dual 虚表
-- 查询当前时间
select sysdate from dual;
-- 查询当前用户
select user from dual;


--------------------------------------------------------------------------------------------------

order by column asc|desc
nulls first -- 空值排在最前面
nulls last  -- 空值排在最后面

--------------------------------------------------------------------------------------------------


update table_name
set column_name = replace(column_name, 'old_string', 'new_string')


-- 制表符:chr(9)
-- 换行符:chr(10)
-- 回车符:chr(13)

--------------------------------------------------------------------------------------------------


-- 修改表名
alter table old_table_name rename to new_table_name;


--------------------------------------------------------------------------------------------------

-- t_id:当前id
-- p_id:父级id

-- 查询所有祖辈节点
select * from table_name
start with t_id = '' or t_id in('')
connect by prior p_id  = t_id

-- 查询所有子代节点
select * from table_name
start with t_id = '' or t_id in('')
connect by p_id  = prior t_id




--------------------------------------------------------------------------------------------------