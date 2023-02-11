# spring-boot



---
- spring boot embedded server

- Jetty
- Netty
- Tomcat
- Undertow


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

# 微服务名称配置不能使用下划线，正确配置如下：
spring.application.name=service-name

server.port=8080
server.tomcat.uri-encoding=UTF-8

# spring boot < 2.0
server.context-path=/xxx
# spring boot >= 2.0
server.servlet.context-path=/xxx

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
```ini
logging.level.root=debug
logging.

logging.pattern.console=%d{HH:mm:ss.SSS} [%X{RequestId}] [%thread] %-5level %-36logger{36}%line - %msg%n


logging.pattern.file=%d{HH:mm:ss.SSS} [%X{RequestId}] [%thread] %-5level %-36logger{36}%line - %msg%n
logging.path=/root/jenkins/project/spring_boot_security_rest/log
logging.file=/root/jenkins/project/spring_boot_security_rest/log/spring_boot_security_rest.log

```
- logging.path 指定日志文件路径，默认日志文件名是 spring.log
- logging.file 配置需要指定日志文件绝对路径，相对路径指定在当前文件
- logging.path 和 logging.file 同时配置，只有 logging.file 生效
- 建议使用logging.config=logback.xml通过logback配置文件设置日志

```ini
# spring boot >
loging.file.path=
loging.file.name=



```

---

## 程序启动执行接口

- implements ApplicationRunner

- implements CommandLineRunner


---
