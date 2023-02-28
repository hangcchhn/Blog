# Spring Bean
> 对象实例


## 初始化和销毁
- `@PostConstruct`注解
- 实现`InitializingBean`接口

```java

@DependsOn(value = "dependsOnBean")  // 依赖
@Component
public class Bean {


    @PostConstruct  // 构造函数之后执行
    public void postConstruct() {

    }

}


```
