
# spring boot package

- https://start.spring.io/
- https://start.aliyun.com/

---
- spring-boot-starter-parent
- spring-boot-starter
- spring-boot-starter-test
- spring-boot-maven-plugin



---
## actuator
>

```xml

<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-actuator</artifactId>
</dependency>
```
- 在Spring Boot 2.x中为了安全起见，默认情况只暴露两个接口
    - `/actuator/health`
    - `/actuator/info`

```yml

info:
  application: #从pom.xml中获取
    name: "@project.name@"
    description: "@project.description@"
    version: "@project.version@"
management:
  server:
    port: 54001  # 指定监听端口，不指定则与server端口一直
  endpoints:  # 启动所有监控点
    web:
      exposure:
        include: '*'
  info: # spring-boot 2.6以后info默认值为false.需手动开启
    env:
      enabled: true
```

