# Nacos服务配置



```xml

<dependency>
    <groupId>com.alibaba.cloud</groupId>
    <artifactId>spring-cloud-starter-alibaba-nacos-config</artifactId>
</dependency>

```

- Spring Boot 2.4.0(Spring Cloud 2020.0.0)之后默认不加`spring-cloud-starter-bootstrap`模块
- spring.cloud.bootstrap.enabled=true
```xml
<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-starter-bootstrap</artifactId>
</dependency>

```