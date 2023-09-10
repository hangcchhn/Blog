# Spring MVC组件

## 请求执行顺序
1. Filter
2. Servlet
3. Interceptor
4. Aspect
5. Controller


---
## Filter
> 过滤器

- `javax.servlet.Filter`

- 依赖Servlet
- 基于函数回调

- 应用启动初始化，停止销毁
- 多次执行

- `HttpServletRequestWrapper`
- `OncePerRequestFilter`：每个请求只执行一次的过滤器


---
## Servlet


---
## Interceptor
> 拦截器

- spring框架实现，可用于非Web应用
- 基于反射机制
- Interceptor可以访问Controller上下文，Filter不能
- Interceptor可以获取bean对象，Filter不能
- Interceptor只对符合的请求起作用，Filter对几乎所有请求起作用



- Spring Boot 2.0+也会拦截静态资源


---
## Aspect



---
## Controller

- 基于`Servlet`容器


- 每个请求都有一个线程来处理
- Tomcat的线程池`maxThreads=200`，`minSpareThreads=25`
- Bean对象默认是单例模式，是非线程安全的，尽量使用局部变量，不要使用成员变量

- 在Tomcat服务中，`Servlet`是单例的


---
- 执行顺序
1. HandlerInterceptor.preHandle
2. ResponseBodyAdvice.supports
3. ResponseBodyAdvice.beforeBodyWrite
4. HandlerInterceptor.postHandle
5. HandlerInterceptor.afterCompletion