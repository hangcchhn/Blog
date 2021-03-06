
# mysql数据库的show命令
---

查看帮助
mysql> help show

---
## 模式相关
```sql
show engine engine_name {status | mutex}
show [storage] engines

show databases [like_or_where]
show character set [like_or_where]
show collation [like_or_where]
```
---
## 创建相关
```sql
show create database database_name
show create event event_name
show create function function_name
show create procedure procedure_name
show create table table_name
show create trigger trigger_name
show create view view_name
```
---
## 系统相关
```sql
show {binary | master} logs
show events
show relaylog events [in 'log_name'] [from pos] [limit [offset,] row_count]
show binlog events [in 'log_name'] [from pos] [limit [offset,] row_count]

show errors [limit [offset,] row_count]
show warnings [limit [offset,] row_count]
```
---
## 对象相关
```sql
show table status [from db_name] [like_or_where]
show function status [like_or_where]
show procedure status [like_or_where]

show function code function_name
show procedure code procedure_name

show privileges
show grants for user

show plugins
show [full] processlist

show profiles
show profile [types] [for query n] [offset n] [limit n]
```
---
## 集群相关
```sql
show master status
show slave hosts
show slave status [for channel channel]

show [global | session] status [like_or_where]
show [global | session] variables [like_or_where]

show open tables [from db_name] [like_or_where]

show [full] tables [from db_name] [like_or_where]
show [full] columns from tbl_name [from db_name] [like_or_where]

show index from tbl_name [from db_name]
show triggers [from db_name] [like_or_where]
```

---






