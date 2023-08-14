# Spring EL(Expression Language)
> SpEL表达式

- Spring 3.x引入
- JSP EL:`${}`
- Spring EL:`#{}`

---
- `ExpressionParser`
---
- `@Value("#{}")`
```java

public class Class() {

    @Value("#{'value'}")
    private String value;

    @Value("#{systemProperties['os.name']}")
    private String osName;

    @Value("#{bean.method('parameter')}")

    // object?.method():如果object为null就不执行method
    @Value("#{object?.method()}")

    // java.lang.*下的类可以省略包
    @Value("#{'T(String)'}")

    // 静态属性或方法
    @Value("#{T(package.Class).staticField}")

    // 逻辑运算与或非
    @Value("true and false or not true")
    private boolean flag;

    // 三目运算符
    @Value("#{condition ? trueValue : falseValue}")
    // 默认值
    @Value("#{condition ?: default}")

    // 正则表达式
    @Value("#{'x' matches 'y'}")



    // 集合
    @Value("collection[]")
    @Value("collection.?[]")  // 查询返回所有
    @Value("collection.^[]")  // 查询返回第一个
    @Value("collection.$[]")  // 查询返回最后一个
    @Value("collection.?[]")
}




```


---
- 读取配置文件:`@Value("${}")`
```java
// 配置文件
@Configuration(value = "parameter.properties")
public class ParameterConfiguration {

    @Value(value = "${package.parameter:defaulte}")
    private String value;
}

```


