# Spring Boot & Tomcat

Servlet 3.0
不依赖web.xml，支持注解配置

ServletContainerInitializer接口通过SPI机制

在META-INF/services/javax.servlet.ServletContainerInitializer中
配置ServletContainerInitializer接口实现类的绝对路径

SpringServletContainerInitializer实现ServletContainerInitializer接口

WebApplicationInitializer接口实现类

---
# 打包war


```xml


```

```java

@SpringBootApplication
public class Application extends SpringBootServletInitializer {

    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(Application.class);
    }
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
```