# Spring Boot & Servlet

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
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-tomcat</artifactId>
    <scope>provided</scope>
</dependency>
```

```java
public class MySpringBootServletInitializer extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(WarApplication.class);
    }
}
```

---
## Spring MVC
- WebMvcConfigurer
Interceptor,ViewResolver,MessageConverter

在Spring Boot 1.5.x中重写WebMvcConfigurerAdapter抽象类，到Spring Boot 2.x后弃用，推荐实现WebMvcConfigurer接口或继承继承WebMvcConfigurationSupport类