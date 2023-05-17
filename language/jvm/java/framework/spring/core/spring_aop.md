# Spring AOP
> 面向切面编程
- AOP(Aspect Oriented Programming)
- Spring AOP是基于spring IoC实现的

- 底层实现是代理模式；参考[Java代理](../../../grammar/java_proxy.md)
---

### 通过`DefaultAopProxyFactory`类`createAopProxy`方法决定使用JDK还是cglib
- 都实现`AopProxy`接口，属性`AdvisedSupport`类`getMethodInterceptor`方法返回`MethodInterceptor`接口
- `JdkDynamicAopProxy`类实现`InvokeHandler`接口`invoke`方法
    - `ReflectiveMethodInvocation`类实现`MethodInvocation`接口

- `ObjenesisCglibAopProxy`类继承`CglibAopProxy`类，其中`DynamicAdvisedInterceptor`静态类实现`MethodInterceptor`接口
    - `CglibMethodInvocation`类实现`MethodInvocation`接口
---
- `JoinPoint`连接点：方法调用，异常抛出，
- `Pointcut`切入点：`JoinPoint`连接点集合
    - `AspectJExpressionPointcut`类
- `Advice`通知：环绕
    - `MethodInterceptor`接口
- `Advisor`切面：包括`Pointcut`切入点和`Advice`通知
    - `PointcutAdvisor`接口

- `@Aspect`切面：相对于`Advisor`优先级高


- `AnnotationAwareAspectJAutoProxyCreator`
    - `findEligibleAdvisors`
    - `wrapIfNecessary`
---

- 实现`MethodInterceptor`接口，注意是org.aopalliance包下的，不是cglib动态代理中的
```java
public class MethodInterceptorImpl implements MethodInterceptor {

    @Nullable
    @Override
    public Object invoke(@Nonnull MethodInvocation methodInvocation) throws Throwable {
        System.out.println("before:" + Arrays.toString(methodInvocation.getArguments()));
        Object proceed = methodInvocation.proceed();
        System.out.println("after:" + proceed);
        return proceed;
    }
}

```
---

- 配置`Pointcut`切入点和`Advice`通知，使用`ProxyFactory`获取代理
```java
AspectJExpressionPointcut pointcut = new AspectJExpressionPointcut();
pointcut.setExpression("execution(* method(*))");
MethodInterceptor advice = new MethodInterceptorImpl();
DefaultPointcutAdvisor advisor = new DefaultPointcutAdvisor(pointcut, advice);
ProxyFactory proxyFactory = new ProxyFactory();
proxyFactory.addAdvisor(advisor);
proxyFactory.setTarget(new DynamicProxyImpl());
proxyFactory.setInterfaces(DynamicProxyApi.class); // 设置目标实现接口，使用JDK动态代理
DynamicProxyApi dynamicProxyApi = (DynamicProxyApi) proxyFactory.getProxy();
System.out.println(dynamicProxyApi.getClass());
dynamicProxyApi.method("xyz");

```


---


- `org.aspectj.lang.annotation`->`org.springframework.aop.aspectj`
    - `Before`
    - `After`
    - `Around`：环绕
- 适配器模式：所有类型通知转换成环绕通知
- 所有`Advice`类都实现`MethodInterceptor`接口，线程使用`MethodInvocation`类
- 责任链模式：`MethodInvocation`接口递归调用，依次执行环绕通知，类似拦截器和过滤器


---

