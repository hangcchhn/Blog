# Spring Boot MongoDB

- pom.xml
```xml

<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-data-mongodb</artifactId>
</dependency>

```

- application.yml
```yaml
spring:
    data:
        mongodb:
            uri: mongodb://localhost:27017/db

```

- MongoTemplate

```java
public class MongoServiceImpl {

    @Autowired
    private MongoTemplate mongoTemplate;


}

```



