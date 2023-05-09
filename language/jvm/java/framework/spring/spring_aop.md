# Spring AOP
> 面向切面编程
- AOP(Aspect Oriented Programming)
- Spring AOP是基于spring IoC实现的


---
## 代理模式
- 底层原理是代理模式：其实就是让别人做同样的事情，但是别人却不仅将我的事情做了，还会把他的事情也做了


### 静态代理




### JDK动态代理
- 必须有接口

- `java.lang.reflect.Proxy`类

- 实现`InvocationHandler`接口的invoke方法
- 通过Proxy类的newProxyInstance方法创建代理对象

### CGlib动态代理
- 字节码技术

- 实现`MethodInterceptor`接口


---

- `JoinPoint`连接点：方法调用，异常抛出
- `Pointcut`切入点：`JoinPoint`连接点集合
- `Advice`通知
- `Advisor`：包括`Pointcut`切入点和`Advice`通知


- `Before`
- `After`
- `Around`


---

```java

@Aspect
@Component
public class AnnotationAspect(){
    @Pointcut(value = "@annotation(hn.cch.common.annotation.Annotation)")
    public void pointcut() {

    }


    @Around("pointcut()")
    public Object around(ProceedingJoinPoint proceedingJoinPoint) {

    }
}


```


