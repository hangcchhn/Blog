# Spring Boot JDBC




- pom.xml

```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-jdbc</artifactId>
</dependency
```


- JdbcTemplate

```java
@Service
public class JdbcServiceImpl {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public List<T> select(sql) {
        List<T> list = jdbcTemplate.query(sql, new RowMapper<T>() {

        });
        return list;
    }

}

```






