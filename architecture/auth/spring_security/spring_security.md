

# Spring Security

采用spring-aop
基于servlet-filter

相关的包
- spring-security-core
- spring-security-web
- spring-security-config
- spring-security-taglibs
---
- 默认用户:user
- 默认密码:Using default security password:
```ini
security.user.name=root
security.user.password=chench
```


- web.xml:
```xml
<!--Spring Security过滤器链，注意过滤器名称必须叫springSecurityFilterChain-->
<filter>
    <filter-name>springSecurityFilterChain</filter-name>
    <filter-class>org.springframework.web.filter.DelegatingFilterProxy</filter-class>
</filter>
<filter-mapping>
    <filter-name>springSecurityFilterChain</filter-name>
    <url-pattern>/*</url-pattern>
</filter-mapping>

```



---





## 前后端分离



登录和退出都不需要编写Controller接口，Security为我们封装好了。
默认登录和退出路径分别是/login和/logout，也可以修改默认路径。
注意login和要使用POST方式，username和password作为form-data.

登录成功和失败需要实现AuthenticationSuccessHandler和AuthenticationFailureHandler接口

```java
.successHandler(authenticationSuccessHandler)//登录成功处理逻辑
.failureHandler(authenticationFailureHandler)//登录失败处理逻辑

.successForwardUrl("/index")//登录成功页面跳转
.failureForwardUrl("/error")//登录失败页面跳转

```
---
- 继承WebSecurityConfigurerAdapter类
-

- 注解：
```java
@EnableGlobalMethodSecurity(prePostEnabled = true,securedEnabled = true)


@PreAuthorize
// 参数
hasAuthority
hasAnyAuthority
hasRole
hasAnyRole

```
---
- CSRF(XSRF):跨站请求伪造(Cross-site Request Forgery)
    - 令牌同步机制可以避免CSRF攻击

    后端生成一个csrf_token，前端发送请求携带这个csrf_token

```java

httpSecurity.csrf().disable()

```

- CORS:跨域资源共享(Cross-Orign Resources Sharing)

```java
httpSecurity.cors() // 跨域

```



---
## Spring Security过滤器链


1. org.springframework.security.web.context.SecurityContextPersistenceFilter
    首当其冲的一个过滤器，作用之重要，自不必多言。
    SecurityContextPersistenceFilter主要是使用SecurityContextRepository在session中保存或更新一个
    SecurityContext，并将SecurityContext给以后的过滤器使用，来为后续filter建立所需的上下文。
    SecurityContext中存储了当前用户的认证以及权限信息。
2. org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter
    此过滤器用于集成SecurityContext到Spring异步执行机制中的WebAsyncManager
3. org.springframework.security.web.header.HeaderWriterFilter
    向请求的Header中添加相应的信息,可在http标签内部使用security:headers来控制
4. org.springframework.security.web.csrf.CsrfFilter
    csrf又称跨域请求伪造，SpringSecurity会对所有post请求验证是否包含系统生成的csrf的token信息，
    如果不包含，则报错。起到防止csrf攻击的效果。
5. org.springframework.security.web.authentication.logout.LogoutFilter
    匹配URL为/logout的请求，实现用户退出,清除认证信息。
6. org.springframework.security.web.authentication.**UsernamePasswordAuthenticationFilter**
    认证操作全靠这个过滤器，默认匹配URL为/login且必须为POST请求。
7. org.springframework.security.web.authentication.ui.DefaultLoginPageGeneratingFilter
    如果没有在配置文件中指定认证页面，则由该过滤器生成一个默认认证页面。
8. org.springframework.security.web.authentication.ui.DefaultLogoutPageGeneratingFilter
    由此过滤器可以生产一个默认的退出登录页面
9. org.springframework.security.web.authentication.www.**BasicAuthenticationFilter**
    此过滤器会自动解析HTTP请求中头部名字为Authentication，且以Basic开头的头信息。
10. org.springframework.security.web.savedrequest.RequestCacheAwareFilter
    通过HttpSessionRequestCache内部维护了一个RequestCache，用于缓存HttpServletRequest
11. org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter
    针对ServletRequest进行了一次包装，使得request具有更加丰富的API
12. org.springframework.security.web.authentication.AnonymousAuthenticationFilter
    当SecurityContextHolder中认证信息为空,则会创建一个匿名用户存入到SecurityContextHolder中。
    spring security为了兼容未登录的访问，也走了一套认证流程，只不过是一个匿名的身份。
13. org.springframework.security.web.session.SessionManagementFilter
    SecurityContextRepository限制同一用户开启多个会话的数量
14. org.springframework.security.web.access.ExceptionTranslationFilter
    异常转换过滤器位于整个springSecurityFilterChain的后方，用来转换整个链路中出现的异常
15. org.springframework.security.web.access.intercept.**FilterSecurityInterceptor**
    获取所配置资源访问的授权信息，根据SecurityContextHolder中存储的用户信息来决定其是否有权限。

---





