# Spring AOP


- Spring AOP是基于spring IoC实现的


---
# Spring AOP底层原理是代理模式
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