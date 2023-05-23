# Java代理
> proxy



## 静态代理

- 装饰模式
```java
// 代理接口
public interface ProxyInterface {
    public String method(String string);
}

// 接口实现类
public class ProxyInterfaceImpl implements ProxyInterface {
    @Override
    public String method(String string) {
        String result = string; // code
        return result;
    }
}

// 静态代理类
public class StaticProxyClass implements ProxyInterface {

    private ProxyInterface proxyInterface;
    // get and set

    @Override
    public String method(String string) {
        // before
        String result = proxyInterface.method(string);
        // after
        return result;
    }
}

```


---
## JDK动态代理
- 只支持接口，目标必须实现接口，目标和代理是平级关系
- 通过Java反射机制调用方法

- `java.lang.reflect.Proxy`类

- 实现`InvocationHandler`接口的invoke方法
```java
public class InvocationHandlerImpl implements InvocationHandler {

    public DynamicProxyApi dynamicProxyApi;
    // get and set

    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        // before
        Object invoke = method.invoke(dynamicProxyApi, args);
        // after
        return invoke;
    }

}
```
- 通过Proxy类的newProxyInstance方法创建代理对象
```java
DynamicProxyApi dynamicProxyApi = new DynamicProxyImpl();
DynamicProxyApi proxyInstance = (DynamicProxyApi) Proxy.newProxyInstance(
        DynamicProxyImpl.class.getClassLoader(),
        new Class[]{DynamicProxyApi.class},
        new InvocationHandlerImpl(dynamicProxyApi));
proxyInstance.method("xyz");

```

---
## cglib动态代理
> Code Generation Library
- 针对类实现代理，通过继承机制生成一个子类，目标和代理是父子关系
- 不支持终态final类和方法，静态static和私有private方法

- pom.xml
```xml
<dependency>
    <groupId>cglib</groupId>
    <artifactId>cglib</artifactId>
    <version>3.3.0</version>
</dependency>
```

- spring-core模块中内嵌了cglib包



- 实现`MethodInterceptor`接口`intecept`方法，使用`Enhancer`创建子类
```java

public class MethodInterceptorImpl implements MethodInterceptor {

    public Object getProxy(Class clazz) {
        Enhancer enhancer = new Enhancer();
        enhancer.setCallback(this);
        enhancer.setSuperclass(clazz);
        return enhancer.create();
    }

    @Override
    public Object intercept(Object o, Method method, Object[] objects, MethodProxy methodProxy) throws Throwable {
        System.out.println("before:" + Arrays.toString(objects));
        // 通过代理类调用父类的方法
        Object invoke = methodProxy.invokeSuper(o, objects);
        System.out.println("after:" + invoke);
        return invoke;
    }
}

```

- 调用`MethodProxy`类`invokeSuper`方法时，分别为目标类和代理类动态生成一个`FastClass`类
- 通过FastClass机制使用index调用方法：给其所有方法分配一个int型的索引index，并调用方法时当做入参可以直接定位



### ASM：通用Java字节码操作和分析框架
- ASM API基于访问者模式提供接口ClassVisitor,MethodVisitor,FieldVisitor


### JDK动态代理和CGlib动态代理对比

| 异同 | JDK动态代理 | CGlib动态代理 |
| :-: | :-: | :-: |
| | | |

