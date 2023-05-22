# Java事务
> transaction

---


---

1.JDBC事务：Java DataBase Connectivity
分自动提交和手工提交

单个SQL语句默认启动事务机制

只支持单数据库事务，不支持多数据库事务


2.JTA事务：Java Transaction API(Application Programming Interface)
分布式事务

3.容器事务
基于JNDI(Java Naming and Directory Interface）

JPA：Java Persistence API(Application Programming Interface)

Hibernate


---

# 分布式事务

- Spring链式事务管理器`ChainedTransactionManager`：轻量，单机


## XA协议
- 事务管理器(中间件)
- 资源管理器(数据库)


### 二阶段提交2PC
- Prepare准备
- Commit提交


### 三阶段提交3PC
- CanCommit是否提交
- PreCommit准备提交
- doCommit正式提交

---

## TCC
> Try Confirm Cancel

---
## JTA

- Atomikos
- Bitronix


---
## Saga


---
## Seata