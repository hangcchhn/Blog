# Spring Bean
> 对象实例

- 执行顺序：构造器(Constructor) -> 依赖注入(@Autowired) -> 初始化(@PostConstruct)

### bean初始化方式及其执行顺序
1. `@PostConstruct`注解：Java提供，修饰非静态无返回方法
2. 实现`InitializingBean`接口`afterPropertiesSet`方法
3. `@Bean(initMethod=)`注解配置initMethod方法

### bean销毁方式及其执行顺序
1. `@PreDestroy`注解：Java提供，修饰非静态无返回方法
2. 实现`DisposableBean`接口`destroy`方法
3. `@Bean(destroyMethod=)`注解配置destroyMethod方法

---
## 内置功能
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

---

- `ApplicationContext.refresh()`
    - `BeanFactoryPostProcessor`
    - `BeanPostProcessor`
    - 实例化单例
    - `AutowiredAnnotationBeanPostProcessor`和CommonAnnotationBeanPostProcessor
    - `Aware`接口和`InitializingBean`接口

---

- `Aware`接口：提供内置功能
    - `BeanNameAware`接口：处理bean名字
    - `BeanFactoryAware`接口：注入`BeanFactory`容器
    - `ApplicationContextAware`接口：注入`ApplicationContext`容器
    - `EmbeddedValueResolverAware`接口：处理@Value("${}")
---
- 读取环境变量:`@Value("${JAVA_HOME}")`

```java
DefaultListableBeanFactory beanFactory = new DefaultListableBeanFactory();

beanFactory.addEmbeddedValueResolver(new StandardEnvironment()::resolvePlaceholders); // ${}:读取环境变量


```
- `InitializingBean`接口：内置功能初始化
---

- `MessageSource`类实例化bean对象名称固定`messageSource`



---
## 拓展功能
### `BeanPostProcessor`:Bean后置处理器

- `ConfigurationPropertiesBindingPostProcessor`
    - `@ConfigurationProperties`


### `BeanFactoryPostProcessor`:BeanFactory后置处理器

- `AutowiredAnnotationBeanPostProcessor`
    - `@Autowired`
    - `@Value`
- `CommonAnnotationBeanPostProcessor`
    - `@Resource`
    - `@PostConstruct`
    - `@PreDestroy`
- `ConfigurationClassPostProcessor`
    - `@ComponentScan`
    - `@Bean`
    - `@Import`
    - `@ImportResource`

### `FactoryBean`

---

