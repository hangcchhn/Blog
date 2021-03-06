
# MySQL binary




---

```sh

./bin/mysqld_safe --defaults-file=/opt/mysql/mysql-8.0.16/my.cnf

./bin/mysql -S /opt/mysql/mysql-8.0.16/data/mysql.sock

./bin/mysqladmin -S /opt/mysql/mysql-8.0.16/data/mysql.sock -u root -p shutdown

```
---
## mysql
> 客户端

```sh
# -h localhost
mysql -u root -p
Enter password:

```

---
## mysqld
> 服务端


---
## mysqladmin
> 管理
`mysqladmin -u root -p password`


---

## mysqlcheck
> 维护



---
## mysqldump
> 备份


```sh
mysqldump -u root -p password database > xxx.sql

```


---
## mysqlimport
> 导入



---

## mysqlshow
> 查询


---

## mysqlreport
> 报告



---
## mysqlbinlog
> 二进制格式的日志文件



---

## mysqlslap
基准测试工具

mysqlslap -a -u root -p --only-print
打印测试内容

mysqlslap -a -u root -p
执行基准测试


---

## mysqldumpslow
> 慢查询分析工具

```sql
show variable like '%slow%'

show variable like '%long%'

vim /etc/my.cnf
[mysqld]


重启mysqld服务
service mysqld restart

```
```sh
mysqldumpslow -h

mysqldumpslow -r n  '*-slow.log'   返回查询次数times最多的n条sql语句
mysqldumpslow -t n '*-slow.log'   返回查询记录count最多的n条sql语句

-s  排序
mysql -s c '*-slow.log'

c
t
l
at
al
ar

-g 正则表达式

```


---





---
