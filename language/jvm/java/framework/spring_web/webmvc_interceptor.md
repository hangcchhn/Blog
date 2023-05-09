# Interceptor
> 拦截器



---

## `HandlerInterceptor`接口

- `preHandle()`方法
- `postHandle()`方法
- `afterCompletion()`方法


### 拓展
- `AsyncHandlerInterceptor`接口继承`HandlerInterceptor`接口，多声明`afterConcurrentHandlingStarted()`方法

- `HandlerInterceptorAdapter`抽象类实现`AsyncHandlerInterceptor`接口，已弃用。


---
## `WebRequestInterceptor`接口，
- `WebRequest`类，同步到`HttpServletRequest`类
    - `setAttribute(name, value, scope)`
    - `SCOPE_REQUEST`
    - `SCOPE_SESSION`
    - `SCOPE_GLOBAL_SESSION`

- `preHandle(WebRequest webRequest)`方法
- `postHandle(WebRequest webRequest, ModelMap modelMap)`方法
- `afterCompletion(WebRequest webRequest, Exception exception)`方法

- `WebRequestInterceptorAdapter`抽象类实`AsyncHandlerInterceptor`接口，调用`WebRequestInterceptor`接口

---

