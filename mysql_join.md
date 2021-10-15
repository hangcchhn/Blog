# mysql join
> mysql数据库的各种join连接

## 一、内连接

内连接相对于两表关联查询

```
# select ... from table_1 t1 inner join table_2 t2 on t1.c1=t2.c2 
# select ... from table_1 t1, table_2 t2 where t1.c1=t2.c2 
```


## 二、外连接
> 外连接分主表和副表，主表关联副表，
- 副表字段类似添加到主表作为拓展，
- 关联关系中副本不存在的字段为NUL

### 1.左连接
以table_left为主

```
# select ... from table_left tl left join table_right tr on tl.cl=tr.cr 

```

### 2.右连接

以右表为主，
```
# select ... from table_left tl right join table_right tr on tl.cl=tr.cr 

```

### 




## 三、全连接
### 1.mysql数据库

使用`union`将左外连接和右外连接的结果求交集获得全连接结果

### 2.oracle数据库

使用`full join`关键字实现全连接

## 四、交叉连接（笛卡尔积）

结果的记录数=左表行数*右表行数



```
# select ... from table_l tl right join table_r tr on tl.cl=tr.cr 
```

 


