# 数据库连接池
> DataBase Connection Pool

---
## DataSource
- Tomcat


## dbcp & pool
> Apache

- commons-dbcp.jar
- commons-pool.jar


---
## c3p0
- 对比DBCP:新增自动回收空闲连接功能

---
## Druid
> Alibaba
# 集成spring-boot

```yml
spring:
  datasource:
    druid:
      web-stat-filter:
        enabled: true
        url-pattern: /*
        exclusions: "*.js,*.css,*.ico,*.jpg,*.png,*.gif,/druid/*"

      stat-view-servlet:
        enabled: true
        url-pattern: /druid/*
        reset-enable: true
        login-username: root
        login-password: chench
        allow: 127.0.0.1
```

- http://127.0.0.1:8080/druid

---
## Hikari
> Spring Boot 2.x
