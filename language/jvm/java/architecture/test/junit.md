# JUnit

- JUnit 4.x
    - ``
- JUnit 5.x
    - `org.junit.jupiter.api.Test`

| Annotation | JUnit4 | JUnit5 |
| :-: | :-: | :-: |
| 测试 | org.junit.Test | org.junit.jupiter.api.Test |
| 断言 | org.junit.Assert | org.junit.jupiter.api.Assertions |
| 假设 | org.junit.Assert | org.junit.jupiter.api.Assertions |
|  | @Before,@After | @BeforeEach,@AfterEach |
|  | @BeforeClass,@AfterClass | @BeforeAll,@AfterAll |

- Test.java
```java

public class Test {

    @Test
    public void test() {

    }

}

```

- `@Test`测试用例中创建的多线程都是守护线程，无法执行配置Spring框架的`@Async`异步方法


---

## JUnit 5.x


- JUnit Platform
- JUnit JUpiter
- JUnit Vintage


---

- Spring Boot >= 2.4.0默认使用JUnit 5.x，`@SpringBootTest`带有`@ExtendWith(SpringExtension.class)`
- 如果要使用JUnit 4.x，需要手动添加junit-vintage-engine
- Spring Boot < 2.0.0不支持JUnit 5.x

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