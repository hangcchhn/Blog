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

- 基于函数回调


---
## Servlet


---
## Interceptor
> 拦截器

- spring-mvc实现
- 基于反射机制
- Interceptor可以访问Controller上下文，Filter不能
- Interceptor可以获取bean对象，Filter不能
- Interceptor对所有请求起作用，Filter



---

## `HandlerInterceptor`接口

### 实现方法
- `preHandle()`方法
- `postHandle()`方法
- `afterCompletion()`方法


### 拓展
- `AsyncHandlerInterceptor`接口继承`HandlerInterceptor`接口，多声明`afterConcurrentHandlingStarted()`方法

- `HandlerInterceptorAdapter`抽象类实现`AsyncHandlerInterceptor`接口，已弃用。





---
## Aspect



---
## Controller
