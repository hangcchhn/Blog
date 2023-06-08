# Spring配置


- XML文件配置
- Java注解配置




```java
@Value("${parameter.name:default_value}")

@ConfigurationProperties
// value=prefix:前缀
@AliasFor("prefix")
String value() default "";

@AliasFor("value")
String prefix() default "";
```

- 获取单个属性使用`@Value`注解赋值给属性字段
- 获取多个属性使用`@ConfigurationProperties`注解赋值给类型对象

```java
@PropertySource
// 加载springboot配置文件，只能加载*.properties文件

@ImportResource
// 加载spring配置文件xml，加载*.xml文件
// value=locations:定位
@AliasFor("locations")
String[] value() default {};

@AliasFor("value")
String[] locations() default {};

@Import
// 加载spring配置文件java
@Bean



```
- @ImportResource和@Import加载spring配置文件都要使用到注解@Configuration实现





---

- 加载Spring配置文件使用`FileSystemXmlApplicationContext`：在Linux或MacOS系统中使用/根路径开头的绝对路径，系统会识别转换转换成相对路径导致读取文件出错；解决方式是在绝对路径前面加上`file:`就可以解决跨系统开发联调测试问题

- 对于Spring 4.1.x版本使用`@PropertySource`和`@Value`注解时会出现读取properties文件中的数据为注解参数，亲试升级到Spring 4.3.x版本解决。

