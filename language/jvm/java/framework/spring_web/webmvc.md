# Spring MVC


- MVC模型
    - Controller控制
    - Model数据
    - View视图

---




---
## 流程
- 最先收到请求的是`DispatcherServlet`
- `HandlerMapping`返回`HandlerExecutionChain`处理请求
- `HandlerExecutionChain`后调用`HandlerAdapter`
- `HandlerAdapter`根据`Handler`调用`XxxController`
- `XxxController`处理完业务逻辑后返回`ModelAndView`
- `HandlerAdapter`将`ModelAndView`返回给`DispatcherServlet`
- `DispatcherServlet`将`ModelAndView`传给`ViewResolver`
- `ViewResolver`解析后返回`View`给`DispatcherServlet`
- `DispatcherServlet`将`Model`传入`View`进行页面渲染
- `DispatcherServlet`最后将响应结果返回
---
## 核心
- `DispatcherServlet`分发
    - `doService`
    - `doDispatch`
    - `processDispatchResult`
    - `render`
- `HandlerExecutionChain`
    - `applyPreHandle`
    - `applyPostHandle`
- `HttpRequestHandlerAdapter`类实现`HandlerAdapter`接口
    - `handle`
- `ResourceHttpRequestHandler`
    - `handleRequest`

- `HandlerMapping`处理器映射
- `HandlerExecutionChain`处理器执行链
    - 一个`Handler`处理器对象
    - 多个`HandlerInterceptor`处理器拦截器

- `HandlerAdapter`处理器适配器

- `ViewReslover`视图解析器


---

```java

@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
private Date date;


```

---
