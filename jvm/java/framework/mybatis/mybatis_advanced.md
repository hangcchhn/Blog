# MyBatis高级

---
## 事务

- 事务隔离级别:`TransactionIsolationLevel`
    - NONE
    - READ_UNCOMMITTED
    - READ_COMMITTED
    - REPEATABLE_READ
    - SERIALIZABLE

- 执行器类型:`ExecutorType`
    - SIMPLE
    - REUSE:复用
    - BATCH:批量

```java
List<BatchResult> flushStatements();

```

---
- `RowBounds`:分页
```java
RowBounds rowBounds = new RowBounds(offset, limit);

```

---
- `ResultHandler<T>`：读取存储过程()中结果的游标(Cursor)
```java
package org.apache.ibatis.session;

public interface ResultHandler<T> {
    void handleResult(ResultContext<? extends T> context);
}

```
- `ResultContext`

---
## 流式查询
- `Cursor`接口继承`Iterable`接口




---

## 缓存

- 本地缓存(LocalCache):SqlSession
- localCacheScope=STATEMENT,Session
- 二级缓存


```xml


```


---

- `MappedStatement`
- `SqlSource`
- `BoundSql`

```java

public class MappedStatement {

    private SqlSource sqlSource;

    public BoundSql getBoundSql(Object parameterObject) {
        // code
    }

public interface SqlSource {
    BoundSql getBoundSql(Object var1);
}

public class BoundSql {
    private final String sql;
    private final List<ParameterMapping> parameterMappings;
    private final Object parameterObject;
    private final Map<String, Object> additionalParameters;
    private final MetaObject metaParameters;

}

```

---

- `MapperProxyFactory`
- `MapperProxy`

