# Nacos服务发现

- pom.xml
```xml

<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-actuator</artifactId>
</dependency>

<dependency>
    <groupId>com.alibaba.cloud</groupId>
    <artifactId>spring-cloud-starter-alibaba-nacos-discovery</artifactId>
</dependency>

```

- application.yml
```yml
server:
  port: 8080

spring:
  application:
    name: nacos-demo
  cloud:
    nacos:
      discovery:
        server-addr: 192.168.10.173:8848


```