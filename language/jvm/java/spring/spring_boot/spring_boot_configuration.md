# Spring Boot配置


1. 根路径:`file:./`
2. 类路径:`classpath:/`
3. 包路径:`classpath*:/`

---
## 默认配置文件读取顺序
- .properties > .yml
- ./config/ >  ./

---


## 不同环境使用不同配置文件

1. 在启动程序命令中加上激活配置文件参数:-Dspring.profiles.active=develop
2. 在默认配置文件中加上激活配置文件参数:spring.profiles.active=release
3. 在默认配置文件中加上包含配置文件参数:spring.profiles.include=dev1,dev2


---

## 按顺序加载配置，重复配置会覆盖
- local
- dev
- test

- sit:System Integrate Test（系统集成测试）
- uat:User Acceptance Test（用户验收测试）
- pet:Performance Evaluation Test（性能评估测试）

- live
- prod

---
- 配置文件应用监听:`org.springframework.boot.context.config.ConfigFileApplicationListener`
```ini
spring.config.name=application-xxx.yyy
# application-{active,include}.{properties,yml}

spring.config.location=classpath:/,classpath:/config/,file:./,file:./config/

```

启动参数:
- `-Dspring.config.location=directory/`
测试结果:如果指定配置文件目录必须带上最后的斜线
- `-Dspring.config.location=directory/application.properties`

- 在默认配置文件中加上参数spring.config.location不生效


- `-Dspring.config.additional-location=`
用法同上，效果时在原有的配置文件基础上加上额外的配置文件



---
- application.properties

```ini


# 关闭启动SpringBoot标志显示
spring.main.banner-mode=off

# 微服务名称配置不能使用下划线，可以使用减号代替
spring.application.name=service-name

# 端口
server.port=8080
# 前缀
# Spring Boot < 2.0
server.context-path=/xxx
# Spring Boot >= 2.0
server.servlet.context-path=/xxx

```
---

- Parameter.java
```java

@Component
@ConfigurationPorperties(prefix = "parameter")
public class Parameter {

    private String field;

    private String[] array;

}



```

- application.yml

```yaml

parameter:
    field: value
    array:
        - item0
        - item1

```