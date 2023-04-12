# MySQL存储过程
> procedure
delimiter定界符，默认定界符是分号（;）

创建存储过程之前要修改定界符为其他符号$$，
创建存储过程完成之后再将定界符改回默认值。
```sql
-- 创建
delimiter $$
create procedure sp_name(
    in args_name data_type
    ,...)
begin
    ...;
end$$
delimiter ;

-- 删除
drop procedure sp_name;


-- 调用
call sp_name(param_value);


-- 查看
show create procedure sp_name\G;

show procedure status\G;



select *
from information_schema.routines
where routine_name = 'sp_name'
```

---



## 变量

```sql
create procedure p (
in var
out var
inout var
)
begin
select ... into var from t;
end;

call p(@var);

select @var;

-- 定义变量指定数据类型
declare variable_name variable_type;
```

## 游标
- 只能用于存储过程
```sql
--定义
declare c cursor for
select ... from t ...
-- 打开
open c

-- 使用
fetch c into v

-- 循环
declare continue handler for sqlstate '02000' set d=1;
repeat fetch c into v;
until d end repeat;

-- 关闭
close c
```