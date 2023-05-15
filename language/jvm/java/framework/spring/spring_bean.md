# Spring Bean
> 对象实例

- 执行顺序：构造方法(Constructor) -> 依赖注入(@Autowired) -> 初始化(@PostConstruct)

## 初始化和销毁
- `@PostConstruct`注解：Java提供，修饰非静态无返回方法
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


---


