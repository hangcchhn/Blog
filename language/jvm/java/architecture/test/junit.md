# JUnit

- JUnit 4.x
    - 4.12
    - 4.13.2
- JUnit 5.x
- pom.xml
```xml
<dependencies>
    <dependency>
        <groupId>junit</groupId>
        <artifactId>junit</artifactId>
        <version>4.13.2</version>
        <scope>test</scope>
    </dependency>
</dependencies>
```


---

## JUnit 5.x


- JUnit Platform
- JUnit JUpiter
- JUnit Vintage


---

Spring Boot >= 2.4.0默认使用JUnit 5.x，@SpringBootTest带有@ExtendWith(SpringExtension.class)
如果要使用JUnit 4.x，需要手动添加junit-vintage-engine


| JUnit 4.x | JUnit 5.x|
| :- | :- |
| @RunWith(SpringRunner.class) | @ExtendWith(SpringExtension.class) |


---

## Spring Boot 2.x & JUnit 5.x

- @TestConfiguration

- @MockBean


---
### 不能与@SpringBootTest同时使用
> Configuration error: found multiple declarations of @BootstrapWith
- @WebMvcTest
- @WebFluxTest

---
- @JdbcTest
- @JooqTest
- @DataJpaTest
- @DataMongoTest
- @DataRedisTest
- @DataLdapTest

---


- @RestClientTest