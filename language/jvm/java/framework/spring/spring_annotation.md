# Spring注解
- Spring 3.0+

---
- `@Order(value=)`注解中整型参数`value`越小，优先级越高，默认是`Integer.MAX_VALUE`

- 在多个切面，拦截器和过滤器中使用`@Order`注解时，优先级越高，越先执行，越在外层
- `@Order`跟`@Bean`一起使用后会失效


---

- 依赖注入`@Autowired`注解失效：创建`BeanFactoryPostProcessor`要先创建Java配置类，而此时`BeanPostProcessor`还未准备好，导致拓展功能`@Autowired`注解失效


---

## `@Scope`作用域
- singleton:默认单例
- prototype:多例
- request:请求
- session:会话
- application:应用

### 在单例Bean对象中依赖注入其他作用域Bean对象会失效的，解决方法：推迟注入

- `@Lazy`:生成代理
- `@Scope(value = "prototype", proxyMode = ScopedProxyMode.TARGET_CLASS)`:生成代理
- `ObjectFactory<>`:间接注入
- `ApplicationContext.getBean`:间接注入



---

- `@ImportResource`注解：读取XML配置文件
- `@Import`注解：导入配置类`@Configuration`
- `@ComponentScan`注解：扫描包`package`

- `@PropertySource`
- `@PropertySources`
- `@`
- `@`
- `@`
- `@`

