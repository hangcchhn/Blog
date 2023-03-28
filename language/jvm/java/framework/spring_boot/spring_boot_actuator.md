


```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-actuator</artifactId>
</dependency>

```

```yml

management:
  endpoints:

    web:
      exposure:
        include: *
  endpoint:
    shutdown:
      enabled: true
```

- 访问http://localhost:8080/actuator接口获取所有endpoint

## endpoint

- info
- health
- beans