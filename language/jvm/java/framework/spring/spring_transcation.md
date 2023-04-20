# Spring Transcation
> 事务


---

## 事务传播方式

- REQUIRED:Spring默认，不存在就创建，存在就加入
- REQUIRES_NEW:每次都创建新的事务，原本存在的事务就挂起，新事务执行完成后再恢复
- SUPPORTS:存在就加入，不存在就
- MANDATORY:必须存在事务，否则抛出异常
- NOT_SUPPORTED:以非事务的方式执行，如果存在事务就先挂起，当前逻辑执行完成后在恢复
- NEVER:不能存在事务，否则抛出异常
- NESTED:不存在就创建，存在就嵌套事务执行

## 事务隔离级别

- DEFAULT:使用数据库默认的事务隔离级别
- READ_UNCOMMITTED:读未提交，最低隔离级别，存在脏读
- READ_COMMITTED:读已提交，可以避免脏读，但是存在不可重复读
- REPEATABLE_READ:可重复读，可以避免不可重复读，但是存在幻读
- SERIALIZABLE:序列化，最高隔离级别，事务串行执行，，可以避免脏读、不可重复读和幻读，但是不能并发