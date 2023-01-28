# Spring

- 控制反转Ioc(Inversion of Control)
- 依赖注入DI(Dependency Injection)
- 面向切面编程AOP(Aspect Orient Programming)
- 面向对象编程OOP(Object Orient Programming)


---
子类依赖注入父类属性：

1.public修饰父类属性
```java
@Autowired
public void superAttribute(){
    super.attributes = attributes;
}

```
2.protected修饰父类属性

```java
@Lazy
@Autowired
protected Attribute attributes;
```

---
## spring EL 表达式



---


# spring aop是基于ioc实现的

spring aop 底层原理是代理模式
代理模式，其实就是让别人做同样的事情，但是别人却不仅将我的事情做了，还会把他的事情也做了


- 静态代理




- JDK动态代理
必须有接口


java.lang.reflect.Proxy类

需要实现InvocationHandler接口的invoke方法
通过Proxy类的newProxyInstance方法创建代理对象

- CGlib动态代理
- 字节码技术

实现MethodInterceptor接口



---
# 异步调用
@Async
要求修饰的方法返回值为void或Future<T>

spring默认使用SimpleAsyncTaskExecutor线程池

默认大小16个

SimpleAsyncTaskExecutor提供了限流机制:ConcurrencyThrottleSupport
org.springframework.util.ConcurrencyThrottleSupport
beforeAccess()
afterAccess()
通过concurrencyLimit属性来控制开关，当concurrencyLimit>=0时开启限流机制，
默认关闭限流机制即concurrencyLimit=-1，当关闭情况下会不断创建新的线程来处理任务


spring-boot推荐使用ThreadPoolTaskExecutor，


---

- 按类型注入@Autowired:
如果使用@Autowired注解装配的类型有多个实例，
可以使用@Primary注解指定一个默认的实例注入，
也可以使用@Qualifier注解指定注入实例的名称
```java
public class Demo {

    @Qualifier(value="")
    @Autowired(required=true) // 是否允许为空
    private Test test;
}


```


- 按名称注入@Resource:
可以根据name按名称注入，也可以按type按类型注入，默认按名称注入，注入实例可以为空
```java
public class Demo {
    @Resource(name="", type="")
    private Test test;
}

```