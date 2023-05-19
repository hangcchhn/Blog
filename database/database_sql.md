# database sql

---
## 不同类型数据库
1. MySQL(mariadb)
```sql


```
2. Oracle(inspur)
```sql


```
3. SQL Server(sybase)
```sql


```


---
## 别名as可以省略直接空格隔开
> 别名分为表别名 和列别名
1. MySQL(mariadb)
as 支持 表别名和列别名

2. Oracle(inspur)
as 只支持列别名 不支持表别名

3. SQL Server(sybase)
as 支持 表别名和列别名

---
## 关键字与字段名冲突：

1. MySQL(mariadb)
```sql
-- 使用``，例如：`create`

```
2. Oracle(inspur)
- 注意Oracle数据库关键字使用双引号时区分大小
```sql
-- 使用""，例如："create"
```
3. SQL Server(sybase)
```sql
--
```

---
## 校验表名是否存在
1. MySQL(mariadb)
```sql
select 1 as len from information_schema. tables where table_schema=(select database()) and table_name=?
```
2. Oracle(inspur)
```sql
select 1 as len from user_tables where table_name=upper(?)
```
3. SQL Server(sybase)
```sql
select 1 as len from sysobjects where type='u' and name=?

select 1 as len from information_schema. tables where table_name=?
```

---
## 查询表名主键列名
1. MySQL(mariadb)
```sql
select column_name from information_schema. key_column_usage where table_schema=(select database())  and table_name=?
```

2. Oracle(inspur)
```sql
select * from user_cons_columns where constraint_name in(select constraint_name from user_constraints where table_name=upper(?) and constraint_type='p')

select cols. *, cons. * from user_cons_columns as cols, user_constraints as cons where cols. constraint_name= cons. constraint_name and cons. constraint_type='p' and table_name=upper(?)
```

3. SQL Server(sybase)
```sql
select column_name from information_schema. key_column_usage where table_name=?
```

---
## 分页查询
> _offset 索引下标（从零开始）（如果为零可以省略该参数及其后面的分号）
> _number 从下标开始查询前多少条记录（如果为-1表示查询到最后一条）

- **特别说明:**
    - order by 后跟的排序字段如果存在重复或空值时，使用分页查询会出现重复或乱序的问题，解决方案是在排序字段最后再加上唯一索引或主键

1. MySQL(mariadb)
```sql
limit _number

limit _offset, _number
limit _number offset _offset


```

2. Oracle(inspur)
```sql

-- rownum
select column_name,... from table_name where rownum <= _number

-- 注意order by不影响rownum序号
select * from ( select rownum no_id, column_name,...
from table_name order by order_column,... [asc|desc] ) t
where t.no_id > _offset and t.no_id <= _offset + _number



-- Oracle >= 12c
offset _offset rows fetch next _number rows only
```

3. SQL Server(sybase)
```sql

select top _number|_percent column_name ...


-- sql server >= 2005
-- 使用行号函数
row_number() over(order by )

select tmp.* from (select row_number()
over(order by _order_by_list) as row,
tbl.* from (_select_string) as tbl) as tmp
where row between _page_begin and _page_end;

-- sql server >= 2012

offset _offset rows fetch next _number rows only

```

---
## 判断语法

1. MySQL(mariadb)
函数if(condition, true_value, false_value)
如果condition为真则返回true_value，为假则返回true_value

- 分支语句：
```sql
case expression
when value1 then result1
. . .
when valuen then resultn
else default
end
```
如果expression等于valuen就返回resultn
如果expression不等于所有valuen就返回default



- 搜索语句：
```sql
case
when condition1 then search1
. . .
when conditionn then searchn
else default
end
```
如果conditionn为真则返回searchn
如果conditionn都为假则返回default


2. Oracle(inspur)
函数decode(expression, value1, result1, . . . , valuen, resultn, default)

如果expression等于valuen就返回resultn
如果expression不等于所有valuen就返回default

针对大于或小于等判断条件，可以使用sign函数
a > b:sign(a - b) == 1
a < b:sign(a - b) == -1
a == b:sign(a - b) == 0

搜索语句：
```sql
case
when condition1 then search1
. . .
when conditionn then searchn
else default
end
```

如果conditionn为真则返回searchn
如果conditionn都为假则返回default

3. SQL Server(sybase)

- 分支语句：
```sql
case expression
when value1 then result1
. . .
when valuen then resultn
else default
end
```
如果expression等于valuen就返回resultn
如果expression不等于所有valuen就返回default



- 搜索语句：
```sql
case
when condition1 then search1
. . .
when conditionn then searchn
else default
end
```

如果conditionn为真则返回searchn
如果conditionn都为假则返回default


- 使用经验：
1. MySQL中使用case-when作为条件，then-else中可以为true和fasle，但在Oracle执行相同语句会报错。
分析原因：MySQL使用tinyint(1)存储true和fasle（值1和0）的boolean类型，Oracle没有boolean类型
解决方案：case删除，end删除，第一个when删除，之后的when使用or替换，else使用or替换，or之间的使用()括起来，then使用and替换，


---
## 判空函数
如果expr1为空则返回expr2
如果expr1不为空则返回expr1

1. MySQL(mariadb)
`ifnull(expr1,expr2)`

2. Oracle(inspur)
`nvl(expr1,expr2)`

3. SQL Server(sybase)
`isnull(expr1,expr2)`


---
## 字符截取函数|时间截取函数
- 数值保留函数：函数(number, digits)：number数值，保留小数位数digits
- 数值保留位数方式：整数使用0替换，小数直接截取，没有四舍五入
    1. 如果digits大于0，表示保留number几位小数
    2. 如果digits小于等于0，表示number去掉小数部分，
    整数部分按digits从底位开始依次使用0替换


1. MySQL(mariadb)

- 函数`truncate(number, digits)`：number数值，保留小数位数digits
- 函数`convert(number, decimal(length, digits))`

2. Oracle(inspur)

- 函数`trunc(number[, digits])`：number数值，保留小数位数digits
如果没有digits参数，表示去掉小数，保留整数， 视此状为默认情况


3. SQL Server(sybase)

- 函数round(number, digits)：number数值，保留小数位数digits
- 函数convert(decimal(length, digits), number)
数据类型decimal(length, digits):保留有效数字


---
## 字符串拼接
1. MySQL(mariadb)
```sql
like concat('%','string','%')
```
2. Oracle(inspur)
```sql
like ('%' || 'string' || '%')
```
3. SQL Server(sybase)



---
## 记录保存
> 不存在的记录插入，存在的记录更新
> 重复记录：主键索引和唯一索引重复
> 分类：单条记录保存和批量保存记录
> on后的关联条件前后必须使用括号()

1. MySQL(mariadb)
```sql
-- 单条记录保存
insert into table_name(insert_column1, insert_column2,...) values
    (insert_value1, insert_value2,...)
on duplicate key update
    update_column1 = update_value1,
    update_column2 = update_value2,
    ...


-- 批量保存记录
insert into table_name(insert_column1, insert_column2,...) values
    (value1_column1, value1_column2,...),
    (value2_column1, value2_column2,...),
    ...
on duplicate key update
    update_column1 = values(update_column1),
    update_column2 = values(update_column2),
    ...


```
2. Oracle(inspur)
```sql
-- 单条记录保存
merge into table_name using dual
on (unique_column1 = unique_value1 and
    unique_column2 = unique_value2 and
    ...)
when matched then update set
    update_column1 = update_value1,
    update_column2 = update_value2,
    ...
when not matched then
insert (insert_column1, insert_column2,...)
values (insert_value1, insert_value2,...)

-- 批量保存记录
-- 注意value_column中的数据不能唯一索引重复
merge into table_name alias_name using (
    select value1_column1 table_column1, value1_column2 table_column2,... from dual union
    select value2_column1 table_column1, value2_column2 table_column2,... from dual union
    ... ) temp_table
on (alias_name.unique_column1 = temp_table.unique_column1 and
    alias_name.unique_column2 = temp_table.unique_column2 and
    ...)
when matched then update set
    alias_name.update_column1 = temp_table.update_column1,
    alias_name.update_column2 = temp_table.update_column2,
    ...
when not matched then
insert (insert_column1, insert_column2,...)
values (temp_table.insert_column1, temp_table.insert_column2,...)


```
3. SQL Server(sybase)




---
## 批量插入
1. MySQL(mariadb)
```sql
insert into table_name(insert_column1, insert_column2,...) values
    (value1_column1, value1_column2,...),
    (value2_column1, value2_column2,...);

```

2. Oracle(inspur)
```sql
insert all
    into table_name(insert_column1, insert_column2,...)
    values (value1_column1, value1_column2,...)
    into table_name(insert_column1, insert_column2,...)
    values (value2_column1, value2_column2,...)
select 1 from dual;


insert into table_name(insert_column1, insert_column2,...)
(select value1_column1, value1_column2,... from dual )
union all (select value2_column1, value2_column2,... from dual)
...

```
3. SQL Server(sybase)
```sql


```
