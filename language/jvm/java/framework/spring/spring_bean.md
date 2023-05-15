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

- `BeanFactory`接口
    - `getBean`方法
    - `DefaultListableBeanFactory`类实现`BeanFactory`接口


- `ApplicationContext`接口继承`BeanFactory`接口，Spring的核心容器
    - `getMessage`方法：获取信息，实现国际化
    - `getResources`方法：获取资源
    - `getEnvironment`方法：获取环境
    - `publishEvent`方法：发布事件，实现事件解耦

---
### `ApplicationContext`接口实现类

- ClassPathXmlApplicationContext
- FileSystemXmlApplicationContext
- XmlWebApplicationContext
- AnnotationConfigWebApplicationContext

- AnnotationConfigApplicationContext
- AnnotationConfigServletWebServerApplicationContext
- AnnotationConfigReactiveWebServerApplicationContext


-
---

- `MessageSource`类实例化bean对象名称固定`messageSource`
