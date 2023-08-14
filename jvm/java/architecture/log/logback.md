# logback


## logback
- logback-core
- logback-classic
    - 实现slf4j API
- logback-access



###  在classpath下寻找配置文件
- logback.groovy
- logback-test.xml
- logback.xml



## spring-boot框架默认集成logback日志
- pom.xml
```xml
<dependency>
    <artifactId>spring-boot-starter-logging</artifactId>
    <groupId>org.springframework.boot</groupId>
</dependency>
```

- application.properties

```properties
logging.level.hn.cch=trace
logging.file=./log/log.log

logging.pattern.console=%d{yyyy-MM-dd HH:mm:ss,SSS} [%thread] %-5level %logger{50} - %msg%n
logging.pattern.file=%d{yyyy-MM-dd HH:mm:ss,SSS} [%thread] %-5level %logger{50} - %msg%n
```

- logback.xml
```xml

```