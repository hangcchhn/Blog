# table join
> 数据库表格的各种join连接



## 一、内连接

内连接相对于两表关联查询

```sql
-- 两表关联查询
select ... from table_1 t1, table_2 t2 where t1.c1=t2.c2

-- 内连接查询
select ... from table_1 t1 inner join table_2 t2 on t1.c1=t2.c2

```
### 1.自然连接

也是一种内连接，省略条件匹配语句on，但要求两表至少有各自有一列 作为判断列，名称相同，类型大致相同
```sql
select ... from table_1 t1 natural join table_2 t2

```

## 二、外连接
> 外连接分主表和副表，主表关联副表，
- 副表字段类似添加到主表作为拓展，
- 关联关系中副本不存在的字段为NUL

### 1.左连接
以table_left为主

```sql
select ... from table_left tl left join table_right tr on tl.cl=tr.cr

```

### 2.右连接

以右表为主，
```sql
select ... from table_left tl right join table_right tr on tl.cl=tr.cr

```

###




## 三、全连接
### 1.mysql数据库

使用`union`将左外连接和右外连接的结果求交集获得全连接结果

### 2.oracle数据库

使用`full join`关键字实现全连接

## 四、交叉连接
> 笛卡尔积

结果的记录数=左表行数*右表行数

使用`cross join`关键字实现交叉连接


```sql
select ... from table_l tl cross join table_r tr on tl.cl=tr.cr
```




