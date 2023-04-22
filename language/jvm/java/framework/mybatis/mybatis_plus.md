# MyBatisPlus



- MyBatisPlus在MyBatis上，只做增强不做改变
- 通用单表增删改差操作
- 支持lambda调用
- 多种主键策略
- 插件
---

- 继承抽象类
`com.baomidou.mybatisplus.core.injector.AbstractMethod`

- 实现方法
```java
public abstract MappedStatement injectMappedStatement(Class<?> mapperClass, Class<?> modelClass, TableInfo tableInfo);
```
- 子类包路径
`com.baomidou.mybatisplus.core.injector.methods.*`


```ini
mybatis-plus.configuration.map-underscore-to-camel-case=true
mybatis-plus.configuration.cache-enabled=true
```