# Spring Boot & Servlet
> Servlet 3.0

## 不再依赖web.xml，支持注解配置

- 通过SPI机制解析配置文件中的`ServletContainerInitializer`接口实现类
- `SpringServletContainerInitializer`类实现`ServletContainerInitializer`接口，通过`@HandlesTypes`注解配置`WebApplicationInitializer`接口，获取所有`WebApplicationInitializer`接口实现类作为`onStartup`方法的第一个参数

- `AbstractContextLoaderInitializer`抽象类实现`WebApplicationInitializer`接口
    `registerContextLoaderListener`方法
- `AbstractDispatcherServletInitializer`抽象类继承`AbstractContextLoaderInitializer`抽象类
    - `registerDispatcherServlet`方法

## Tomcat Embed
- `ContextConfig`：通过BCEL技术，扫描/WEB-INF/classes目录，解析class文件


## Java字节码
- BCEL(Byte Code Engineering Library)：
- javaassist
- ASM

---
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


