# Spring MVC


@Controller
spring mvc => Controller
struts 2 => Action


@RestController = @ResponseBody ＋ @Controller
1：@ResponseBody返回数据添加（JSON，XML）String->html，jsp

2：@Controller必须返回页面（html，jsp）

@ResponseBody
ElementType.TYPE, ElementType.METHOD
注解可以放在返回和方法上

@RequestBody
ElementType.PARAMETER
注解可以放在参数上
用与请求中传递json格式数据直接转化为对象
注意这个没有封装在@RestController注解之中



@RequestMapping

1. value=path：路径
```java
@AliasFor("path")
String[] value() default {};

@AliasFor("value")
String[] path() default {};
```
2. method：方法
```java
// GET, POST, PUT, DELETE
RequestMethod[] method() default {};


// 对于请求中的GET或POST方法
@GetMapper
@PostMapper
```

---


spring-mvc-4.3.x

- MVC模型
    - Controller控制
    - Model数据
    - View视图


---
## 流程
1. browser发送request，springmvc最先收到request的是DispatcherServlet。
2. DispatcherServlet收到request后调用HandlerMapping，返回处理request的HandlerExecutionChain。
3. DispatcherServlet收到HandlerExecutionChain后调用HandlerAdapter，HandlerAdapter根据Handler调用Controller。
4. Controller处理完业务逻辑后返回ModelAndView。
5. HandlerAdapter将ModelAndView返回给DispatcherServlet。
6. DispatcherServlet将ModelAndView传给ViewReslover。
7. ViewReslover解析后向DispatcherServlet返回View。
8. DispatcherServlet将Model传入View进行页面渲染。
9. DispatcherServlet将渲染结果作为response返回给browser进行页面显示。
---
## 核心
1. 收到request后执行DispatcherServlet.doService(HttpServletRequest, HttpServletResponse)
2. doService()调用DispatcherServlet.doDispatch(HttpServletRequest, HttpServletResponse)
3. doDispatch()调用DispatcherServlet.getHandler(HttpServletRequest)返回HandlerExecutionChain
4. doDispatch()调用DispatcherServlet.getHandlerAdapter(HandlerExecutionChain.getHandler())返回HandlerAdapter
5. doDispatch()调用HandlerExecutionChain.applyPreHandle(HttpServletRequest, HttpServletResponse)
6. applyPreHandle()调用HandlerInterceptor.preHandle(HttpServletRequest, HttpServletResponse, Object)

7. doDispatch()调用HandlerAdapter.handle(HttpServletRequest, HttpServletResponse, Object)返回ModelAndView
```
    HandlerAdapter.handle(HttpServletRequest, HttpServletResponse, Object)
    AnnotationMethodHandlerAdapter.handle(HttpServletRequest, HttpServletResponse, Object)
    AnnotationMethodHandlerAdapter.invokeHandlerMethod(HttpServletRequest, HttpServletResponse, Object)

    AnnotationMethodHandlerAdapter.ServletHandlerMethodInvoker
    ServletHandlerMethodInvoker.invokeHandlerMethod(Method, Object, NativeWebRequest, ExtendedModelMap)
    ServletHandlerMethodInvoker.getModelAndView(Method, Class<?>, Object, ExtendedModelMap, ServletWebRequest)
    ServletHandlerMethodInvoker.updateModelAttributes(Object, Map<String, Object>, ExtendedModelMap, NativeWebRequest)
```
8. doDispatch()调用HandlerExecutionChain.applyPostHandle(HttpServletRequest, HttpServletResponse, ModelAndView)
9. doDispatch()调用DispatcherServlet.processDispatchResult(HttpServletRequest, HttpServletResponse, HandlerExecutionChain, , Exception)
10. processDispatchResult调用DispatcherServlet.render(ModelAndView, HttpServletRequest, HttpServletResponse)


---
重要
- 前端控制器DispatcherServlet
- 处理器映射器HandlerMapping
- 处理器适配器HandlerAdapter
- 视图解析器ViewReslover

HandlerExecutionChain对象包括一个Handler处理器对象和多个HandlerInterceptor处理器拦截器对象

视图：jsp，freemaker，thymeleaf

映射方式:配置文件方式，实现接口方式，添加注解方式


组件
```java
/** 文件上传解析器 */
private MultipartResolver multipartResolver;

/** 区域解析器，用于国际化 */
private LocaleResolver localeResolver;

/** 主题解析器 */
private ThemeResolver themeResolver;

/** 处理器映射关系 */
private List<HandlerMapping> handlerMappings;

/** 处理器适配器*/
private List<HandlerAdapter> handlerAdapters;

/** 处理器异常解析器 */
private List<HandlerExceptionResolver> handlerExceptionResolvers;

/** 请求到视图名称的转换器 */
private RequestToViewNameTranslator viewNameTranslator;

/** 允许重定向时携带参数，存在会话中用完就销毁， */
private FlashMapManager flashMapManager;

/** 视图解析器 */
private List<ViewResolver> viewResolvers;
```

---

Spring MVC中`XxxController`默认采用单例singleton模式
可以通过`@Scope("prototype")`配置prototype模式
Struct2中`XxxAction`默认采用prototype模式

不要在单例模式的类中定义非静态变量，存在共享数据安全问题

---

```java

@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
private Date date;


```

---

1. HandlerInterceptor.preHandle
2. ResponseBodyAdvice.supports
3. ResponseBodyAdvice.beforeBodyWrite
4. HandlerInterceptor.postHandle
5. HandlerInterceptor.afterCompletion