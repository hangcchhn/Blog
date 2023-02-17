
# Java Log Framework
> Java语言日志框架

- 日志模块
    - JUL(java.util.logging)
    - log4j
    - log4j2
    - logback

- 日志门面
    - JCL(Jakarta Commons Logging):commons-logging
    - slf4j(Simple Logging Facade for Java)

---
## JUL
> java.util.logging
- Logger
- Appender(Handler)
- Layout(Formatter)
- Level
- Filter


---


---

## spring-boot框架移除logback日志引用log4j2日志

- pom.xml
```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-web</artifactId>
    <exclusions>
        <!--排除logback-->
        <exclusion>
            <artifactId>spring-boot-starter-logging</artifactId>
            <groupId>org.springframework.boot</groupId>
        </exclusion>
    </exclusions>
</dependency>
<!-- 添加log4j2 -->
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-log4j2</artifactId>
</dependency>
```

- log4j2.xml
