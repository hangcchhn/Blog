# Nacos服务配置



```xml

<dependency>
    <groupId>com.alibaba.cloud</groupId>
    <artifactId>spring-cloud-starter-alibaba-nacos-config</artifactId>
</dependency>

```

```yml
spring:
  application:
    name: nacos-demo
  profiles:
    active: dev
  cloud:
    nacos:
      server-addr: localhost:8848
  config:
    import:
      - nacos:nacos-demo.yml
      - optional:nacos:nacos-demo-dev.yml

```

- 配置`spring.cloud.nacos.config.namespace`不生效



- Spring Boot 2.4.0(Spring Cloud 2020.0.0)之后默认不加`spring-cloud-starter-bootstrap`模块
- spring.cloud.bootstrap.enabled=true
```xml
<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-starter-bootstrap</artifactId>
</dependency>

```


