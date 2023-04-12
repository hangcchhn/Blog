# MySQL事务

- MyISAM不支持事务
- InnoDB才支持事务

```sql
-- 开始事务
begin transaction transaction_name
-- 事务提交
commit transaction_name
-- 事务回滚
rollback transaction_name

-- 保存事务点
savepoint transaction_point
-- 回滚事务点
rollback to transaction_point

```
---
## MySQL事务隔离级别

- 未提交读(read uncommitted)
脏读：A事务修改数据还未提交，B事务读取数据之后，A事务出现回滚操作

- 已提交读(read committed)
幻读：A事务修改数据，B事务读取数据；A事务又修改数据，B事务再读取数据，B事务前后两次查询的数据不一致

- 可重复读(repeatable read)
A事务修改数据，B事务读取数据，无论A事务修改多少次，只有A事务不提交，B事务读取都是修改之前的数据

- 串行化(serializable)
A事务修改数据时，B事务读取数据要阻塞等待，不允许读写并发操作

```sql
select @@tx_isolation;
SET [SESSION|GLOBAL] TRANSACTION ISOLATION LEVEL [READ UNCOMMITTED|READ COMMITTED|REPEATABLE READ|SERIALIZABLE]
```

# MySQL日志
> binlog

- STATEMENT
基于SQL语句的复制(statement-based replication, SBR)

- ROW
基于行的复制(row-based replication, RBR)

- MIXED
混合模式复制(mixed-based replication, MBR)



---


## 执行insert into on duplicate key update报错
```
[HY000][1665] Cannot execute statement: impossible to write to binary log since BINLOG_FORMAT = STATEMENT and at least one table uses a storage engine limited to row-based logging. InnoDB is limited to row-logging when transaction isolation level is READ COMMITTED or READ UNCOMMITTED.
```

### 服务端配置
```sql
-- 需要超管用户的所有权限才能执行
grant all privileges on *.* to 'root'@'%' identified by 'chench' with grant option;
flush privileges;

select @@tx_isolation, @@binlog_format;

set global transaction isolation level repeatable read;

set global binlog_format=row;
```

### 客户端配置
```sql
-- 分配一个只有对当前数据库的增删改查权限
grant insert, delete, update, select on database.* to 'username'@'hostname' identified by 'password' with grant option;
flush privileges;
```

- 使用jdbc
```java
connection.setTransactionIsolation(Connection.TRANSACTION_REPEATABLE_READ);
```
- 使用dbcp
```ini
spring.datasource.tomcat.default-transaction-isolation=4

```