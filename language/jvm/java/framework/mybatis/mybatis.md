

---

## Spring Boot整合MyBatis/MyBatis-Plus


```java
// 指定package前缀扫描Mapper.java
@MapperScan(value = {"hn.cch.mapper"})
@SpringBootApplication
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
```

- 配置参数前缀mybatis或mybatis-plus
```yml
# 指定XML文件匹配模式
mybatis:
  mapper-locations:
    - classpath*:mapper/**/*.xml
  type-aliases-package: hn.cch.entity
  config-location: classpath*:mybatis-config.xm
  configuration:
    log-impl: org.apache.ibatis.logging.stdout.StdOutImpl

```




