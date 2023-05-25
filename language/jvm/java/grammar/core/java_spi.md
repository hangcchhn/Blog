# Java SPI
> Service Provider Interface

- 服务提供者接口

- Spring，JDBC，Dubbo，

- `ServiceLoader`类实现`Iterable`接口的`iterator()`方法，通过反射创建实例

- 解析`classpath*:META-INF/services/`目录下文件
- `hn.cch.spi.Service`：文件名是接口，文件内容是对应接口的实现类，多个分行
```
hn.cch.spi.impl.ServiceImpl0
hn.cch.spi.impl.ServiceImpl1
```

```java
ServiceLoader<Service> serviceLoader = ServiceLoader.load(Service.class);
```


## Spring SPI

- 获取所有文件返回`Enumeration`枚举，按`properties`格式解析，通过反射创建实例


- 读取`classpath*:META-INF/services/spring.factories`文件
- `spring.factories`：`key`是接口；`value`是对应接口的实现类，多个使用逗号分隔
```ini
hn.cch.spi.Service=hn.cch.spi.impl.ServiceImpl0,hn.cch.spi.impl.ServiceImpl1
```

```java
List<Service> list = SpringFactoriesLoader.loadFactories(Service.class,
        Thread.currentThread().getContextClassLoader());
```

- `spring.factories`功能Spring Boot 2.7+废弃，Spring Boot 3.0+移除