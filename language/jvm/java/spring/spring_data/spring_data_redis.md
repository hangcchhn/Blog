# Spring Data Redis


---

- Spring Boot 1.x:使用Jedis连接Redis，线程不安全建议使用线程池
- Spring Boot 2.x:使用Lettuce连接Redis，基于Netty框架，线程安全


- pom.xml
```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-data-redis</artifactId>
</dependency>

```


- application.yml
```yaml
spring:
    redis:
        # client-type: jedis
        host: localhost
        port: 6379
        database: 0



```

- RedisTemplate
```java

public class RedisServiceImpl {

    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    @Autowired
    private StringRedisTemplate stringRedisTemplate;

}

