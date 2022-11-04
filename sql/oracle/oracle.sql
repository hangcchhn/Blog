
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
select count(*) from v$session where status='ACTIVE';

-- 查询单个用户的会话总数
select username,count(username) from v$session
where username is not null group by username;

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

--------------------------------------------------------------------------------------------------


update table_name
set column_name = replace(column_name, 'old_string', 'new_string')


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
校验数字

select column_name from table_name where trim(translate(nvl(column_name,'-'),'0123456789',' ')) is null;

select column_name from table_name where regexp_like(column_name,'^[0-9]+[0-9]$');
--------------------------------------------------------------------------------------------------
