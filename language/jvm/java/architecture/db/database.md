
# 数据库类型


## MySQL
- MySQL 5.x
    - com.mysql.jdbc.Driver
- MySQL 8.x
    - serverTimezone=Asia/Shanghai
    - com.mysql.cj.jdbc.Driver




## H2

```xml
<dependency>
    <groupId>com.h2database</groupId>
    <artifactId>h2</artifactId>
</dependency>


```


---

# 多数据源
> MultiDataSource



- Spring提供`AbstractRoutingDataSource`抽象类
    - 只支持单数据源事务

- Spring Boot提供`DataSourceBuilder`类

- Spring提供`DataSourceTransactionManager`类管理事务

