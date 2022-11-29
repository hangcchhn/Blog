# Oracle command

`SQL> command`



## sqlplus
```sh
sqlplus username/password@database as rolename
sqlplus /nolog
SQL> conn username/password@database as rolename

sqlplus sys@orcl as sysdba

```
- 命令结束符;

---



## 角色role
- normal:普通权限
- sysdba:最高权限
- sysoper:操作员权限
    - 启动或关闭数据库服务
    - 备份或恢复数据库数据
    - 日志归档
    - 会话限制

## 用户user
- sys用户只能使用sysdba或sysoper角色登陆，不能使用normal角色登陆
- system用户只能使用normal角色登陆


- sysdba角色登陆后用户会变成sys
- sysoper角色登陆后用户会变成public

## 模式schema

- 帮助:`help|? topic(主题:命令）`


- 命令行执行SQL文件:`start=@`
    - `SQL> start script.sql`
    - `SQL> @script.sql`


```sql
show user;--当前用户
show parameter service_names;--服务名
show parameter instance_name;--实例名


desc[ribe]--描述(查询结构）

spo[ol]--将结果输出到指定文件中

save

set
get

col[umn]

```

---

## 字符串
- char:存放定长字符数据(max length=2000byte）
- varchar:兼容其他类型数据库，甲骨文不建议使用
- varchar2:存放变长字符数据(max length=4000byte）


- Oracle的clob 转 Java的string 需要使用to_char()函数



---
- 聚合函数会过滤null值
    - count()
    - min()
    - max()
    - sum()
    - avg():算术平均
    - mean():几何平均
    - stddev():标准差


---
# 空字符串与null
- 将空字符串''当作null来处理
- 赋值空字符串''会自动转换为null

- 与表格或视图的列对比条件为null或''时，使用>,<,=,>=,<=,!=,<>查询结果为空。

```sql
select 1 from dual where '' is null

select 1 from dual where '' = ''
```

- nvl函数
- decode函数

nvl(table1_name.column_name, 0) = nvl(table2_name.column_name, 0)


---

## 偏移函数
- number:偏移量(1)
- default:默认值(null)
```sql
-- 向下偏移
select column_name, lag(column_name, number, default) over(order by column_name) from table_name
-- 向上偏移
select column_name, lead(column_name, number, default) over(order by column_name) from table_name

```

- over(order by column_name)

- over(partition by group_column order by column_name)
---

## 开窗函数
- `over([partition by group_column] order by order_column)`
可以与row_number()，rank()和dense_rank()一起使用

使用over语句排序是空值是最大的

分区(partition by），类似:分组(group by）
区别在于分组返回记录条数:
分区(partition by）返回组内所有记录，
分组(group by）只返回经过聚合函数处理字段之后的结果。


---
```sql
-- 用户权限
grant connect,resource,dba to user_name;

-- 表格权限
grant select,insert,update,delete,all on current_user.table_name to other_user;

-- 创建同义词
create or replace synonym synonym_name for other_user.table_name;
```
---
