
MySQL优化
optimization

---

尽量减少全表扫描
注意导致索引失效

在 MySQL 5.0 之前的版本要尽量避免使用 or 查询，可以使用 union 或者子查询来替代，因为早期的 MySQL 版本使用 or 查询可能会导致索引失效问题，
在 MySQL 5.0 之后的版本中引入了索引合并，就是多条件查询，比如 or 或 and 查询的结果集进行合并交集或并集的功能，就不会导致索引失效的问题了。


避免在 where 查询条件中使用 != 或者 <> 操作符，
因为这些操作符会导致查询引擎放弃索引而进行全表扫描。

查询具体的字段而非全部字段
减少不必要的数据传输占有读写

避免在查询结果中使用计算
否则会导致索引失效的问题

创表语句中要求字段非空并设置默认值
空值会导致查询过程中索引失效的问题



尽量使用join连接语句来替代子查询，
因为子查询是嵌套查询，而嵌套查询会新创建一张临时表，
而临时表的创建与销毁会占用一定的系统资源以及花费一定的时间，
但join连接语句并不会创建临时表，
尽量使用小表驱动大表的方式进行查询


在高版本数据库中对于在join后使用where条件
会因为条件判断结果的记录数，
按小表驱动大表原则优化查询，
使用执行计划查看语句查询优化后的执行顺序。






适当使用前缀索引，MySQL 是支持前缀索引的。
可以定义字符串的一部分来作为索引，索引越长占用的磁盘空间就越大。
适当的选择使用前缀索引，可以减少空间的占用和提高查询效率。
* 模糊查询注意使用最左前缀


* 联合索引注意最左匹配原则
创建联合索引的时候需要注意索引字段创建的顺序
在每次复合查询条件字段时是从左往右匹配数据的

特别注意陷阱问题：
关于联合索引注意最左匹配原则，在高版本数据库中会优化查询调整条件顺序




---


慢查询
开启慢查询日志的记录功能：
1.命令行执行 mysql>
set global slow_query_log=1
2.配置文件 my.cnf
```ini
slow_query_log=1
slow_query_log_file=/tmp/mysql_slow.log
```
---


---







