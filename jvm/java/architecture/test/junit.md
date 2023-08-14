# JUnit



---

- Test.java
```java

public class Test {

    @Test
    public void test() {

    }

}

```

- `@Test`测试用例中创建的线程都是守护线程，无法执行配置Spring框架的`@Async`异步方法
- `@Test`修饰的方法必须使用`public`修饰，返回`void`类型，参数列表为空
- 测试代码的包应该和被测试代码的包结构保持一致


---
## rules

- `@Rule`注解：标记`public`成员变量，用于测试方法级别，`@ClassRule`注解用于测试类级别，类似`@Before`，`@BeforeClass`
    - 实现`TestRule`接口中的`apply`方法
- `RuleChain`控制多个`TestRule`接口实现类的执行顺序

```java
    @Rule
    public RuleChain ruleChain = RuleChain
            .outerRule(ExpectedException.none())
            .around(new Timeout(3, TimeUnit.SECONDS));


```

---

## 实现原理

- JUnit中的测试用例可被执行，真正的入口是`JUnitCore`类，其有个main方法
```java
    public static void main(String... args) {
        Result result = (new JUnitCore()).runMain(new RealSystem(), args);
        System.exit(result.wasSuccessful() ? 0 : 1);
    }
```


- 调用以`Runner`抽象类为参数的`run`方法
```java
    public Result run(Runner runner) {
        Result result = new Result();
        RunListener listener = result.createListener();
        this.notifier.addFirstListener(listener);

        try {
            this.notifier.fireTestRunStarted(runner.getDescription());
            runner.run(this.notifier);
            this.notifier.fireTestRunFinished(result);
        } finally {
            this.removeListener(listener);
        }

        return result;
    }
```

- `BlockJUnit4ClassRunner`类继承`ParentRunner`类，`ParentRunner`类继承`Runner`抽象类

---

## JUnit 5.x


- JUnit Platform
- JUnit JUpiter
- JUnit Vintage


| Annotation | JUnit 4.x | JUnit 5.x  |
| :-: | :-: | :-: |
| 测试 | org.junit.Test | org.junit.jupiter.api.Test |
| 断言 | org.junit.Assert | org.junit.jupiter.api.Assertions |
| 假设 | org.junit.Assert | org.junit.jupiter.api.Assertions |
| 类 | @Before,@After | @BeforeEach,@AfterEach |
| 方法 | @BeforeClass,@AfterClass | @BeforeAll,@AfterAll |
| Spring Boot | @RunWith(SpringRunner.class) | @ExtendWith(SpringExtension.class) |
---

- Spring Boot >= 2.4.0默认使用JUnit 5.x，`@SpringBootTest`带有`@ExtendWith(SpringExtension.class)`
- 如果要使用JUnit 4.x，需要手动添加junit-vintage-engine
- Spring Boot < 2.0.0不支持JUnit 5.x



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