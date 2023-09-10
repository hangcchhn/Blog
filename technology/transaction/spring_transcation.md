# Spring Transcation
> 事务
- Spring事务使用Spring AOP动态代理原理实现


---

- 事务注解：`@Transactional(propagation = , isolation = )`



### 事务传播方式
> PROPAGATION_

- `REQUIRED`：默认，不存在就创建，存在就加入
- `REQUIRES_NEW`：每次都创建新的事务，如果存在事务就先挂起，新事务执行完成后再恢复
- `SUPPORTS`：存在就加入，不存在就以非事务方式执行
- `MANDATORY`：必须存在事务，存在就加入，否则抛出异常
- `NOT_SUPPORTED`：以非事务方式执行，如果存在事务就先挂起，当前逻辑执行完成后再恢复
- `NEVER`：以非事务方式执行，不能存在事务，否则抛出异常
- `NESTED`：不存在就创建，存在就嵌套事务执行，注意与`REQUIRED`区别是多创建了一个`savepoint`保存点

### 事务隔离级别
> ISOLATION_
- `DEFAULT`：使用数据库默认的事务隔离级别
- `READ_UNCOMMITTED`：读未提交，可以读取其他并发执行事务未提交的数据，最低隔离级别，存在脏读，不可重复读，幻读
- `READ_COMMITTED`：读已提交，只能读取其他并发执行事务已提交的数据，可以避免脏读，但是存在不可重复读(记录总数不变，侧重字段数据不同)，幻读
    - SQL Server、Oracle
- `REPEATABLE_READ`：可重复读，读取本身事务开始时的快照数据，可以避免脏读，不可重复读，但是存在幻读(侧重记录总数不同)
    - MySQL InnoDB
- `SERIALIZABLE`：序列化，最高隔离级别，事务串行执行，，可以避免脏读、不可重复读和幻读，但是不能并发

---
- `PlatformTransactionManager`接口
    - `TransactionStatus getTransaction(TransactionDefinition)`
    - `commit(TransactionStatus)`
    - `rollback(TransactionStatus)`
- `TransactionDefinition`类
    - `String getName()`
    - `int getPropagationBehavior()`
    - `int getIsolationLevel()`
    - `int getTimeout()`
    - `boolean isReadOnly()`
- `TransactionStatus`接口继承`TransactionExecution`接口
    - `boolean hasSavepoint()`
    - `flush()`
    - ``
    - ``
    - ``
---

## `PlatformTransactionManager`接口

```java


```

- JDBC：`DataSourceTransactionManager`类
- JPA：`JpaTransactionManager`类
- Hibernate：`HibernateTransactionManager`类
- JDO：`JdoTransactionManager`类
- JTA：`JtaTransactionManager`类

---

## 声明式事务：`@Transactional`注解
-

### 实现原理，创建代理
- 为每个Bean对象创建一个`BeanFactoryTransactionAttributeSourceAdvisor`切点实例，判断当前Bean对象对应的class中是否含有`@Transactional`注解标注的方法，如果存在就适配切点实例，创建代理对象管理事务
- 创建Bean对象时，寻找适配切点实例，如果由就表示切点实例能够应用到Bean对象中，即`AopUtils.canApply(Pointcut, Class<?>, boolean)`

- `AbstractFallbackTransactionAttributeSource.computeTransactionAttribute()`
- `AbstractFallbackTransactionAttributeSource.getTransactionAttribute()`

- 代理对象的拦截函数`CglibAopProxy.DynamicAdvisedInterceptor.intercept()`

- `TransactionAspectSupport.invokeWithinTransaction()`

-

### `@Transactional`注解事务失效
- 未被Spring容器管理
- 数据库表不支持事务：MySQL MyISAM（不支持事务，行锁和外键)
- `@Transactional`注解标注的方法访问修饰符不是`public`
- `@Transactional`注解标注的方法被`final`或`static`修饰（动态代理不支持）

- 方法调用本类`@Transactional`注解标注的方法（使用代理对象管理事务，使用this调用失效）
    - `AopContext.currentProxy()`创建代理对象调用

- `@Transactional`注解标注的方法内捕获了运行时异常或抛出非运行时异常
    - Spring事务通过方法抛出的`RuntimeException`和`Error`判断是否回滚
    - `@Transactional(rollbackFor = .class)`支持设置事务回滚异常类型
- `@Transactional(propagation = Propagation.NESTED)`嵌套事务，只回滚到`savepoint`保存点


- 多线程调用：不同线程获取的数据库连接不同（Spring事务通过同一数据库连接实现）
    - `Thread`的`ThreadLocal`中保存数据源`DataSource`和数据库连接`Connection`




- `TransactionCallback`接口

- Spring Boot项目通过`DataSourceTransactionManagerAutoConfiguration`类开启事务
- Spring项目手动配置

---
### 编程式事务：`TransactionTemplate`类
- 避免Spring AOP代理问题导致事务失效
- 直观，能够更小粒度的控制事务范围