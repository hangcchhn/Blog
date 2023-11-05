# Spring Boot



---
## 内置的服务器
> embedded server

- Tomcat:默认
- Undertow:比Tomcat强
- Jetty

```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-web</artifactId>
    <exclusions>
    <exclusion>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-tomcat</artifactId>
    </exclusion>
    </exclusions>
</dependency>
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-jetty</artifactId>
</dependency>


```

- Netty



- spring webmvc tomcat servlet

- spring webflux netty reactor



- spring boot 1.5.x -> jdk 1.7

- spring boot 2.x -> jdk 1.8


---

`mvn spring-boot:run`
Started Application in 2.112 seconds (JVM running for 4.462)

---

- application.properties

```ini



# 设置静态路径
hn.cch.static-path=path
spring.resources.static-locations=classpath:/META-INF/resources/,classpath:/resources/,classpath:/static/,classpath:/public/,file:${hn.cch.static-path}/

```
- `org.springframework.boot.autoconfigure.web.ResourceProperties`

- `CLASSPATH_RESOURCE_LOCATIONS = {"classpath:/META-INF/resources/", "classpath:/resources/", "classpath:/static/", "classpath:/public/"}`

---

spring boot 使用环境变量作为配置参数，冒号后是默认值
configuration.parameter=${ENVIRONMENT_VARIABLE:default_value}



---
## 日志
- 默认日志文件名是 spring.log
```ini

logging.level.root=debug
logging.level.package=warn
logging.group.package=info


logging.pattern.console=%d{HH:mm:ss.SSS} [%X{RequestId}] [%thread] %-5level %-36logger{36}%line - %msg%n
logging.pattern.file=%d{HH:mm:ss.SSS} [%X{RequestId}] [%thread] %-5level %-36logger{36}%line - %msg%n



# Spring Boot < 2.2.0
logging.path=
logging.file=
# Spring Boot >= 2.2.0
loging.file.path=
loging.file.name=


```
- logging.path 指定日志文件路径，
- logging.file 配置需要指定日志文件绝对路径，相对路径指定在当前文件
- logging.path 和 logging.file 同时配置，只有 logging.file 生效

```ini

logging.config=logback.xml
# logging.config=logback-local.xml

logging.logback.

```

- logback.xml

- 建议使用logging.config=logback.xml通过logback配置文件设置日志


---

## 程序启动执行接口

- `ApplicationRunner`
- `CommandLineRunner`


---

- 校验
```xml

<dependency>
    <groupId>javax.validation</groupId>
    <artifactId>validation-api</artifactId>
</dependency>

<dependency>
    <groupId>org.hibernate.validator</groupId>
    <artifactId>hibernate-validator</artifactId>
</dependency>


```

---
- 懒加载

- 独立控制
```java
@Lazy
@Component
public class Xxx {

}

```

- 全局配置
```properties
spring.main.lazy-initialization=true
```

---
## 自动配置

- `*AutoConfiguration`