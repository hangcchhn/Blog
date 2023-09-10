
# WebMvcConfiguration

- 在Spring Boot 1.x中重写`WebMvcConfigurerAdapter`抽象类，到Spring Boot 2.x后弃用
- 推荐实现`WebMvcConfigurer`接口或继承继承`WebMvcConfigurationSupport`类




---

```java
@Configuration
public class WebMvcConfiguration implements WebMvcConfigurer {

    /**
     * 添加拦截器
     *
     * @param interceptorRegistry
     */
    @Override
    public void addInterceptors(InterceptorRegistry interceptorRegistry) {
        interceptorRegistry.addInterceptor(new HandlerInterceptorImpl());
    }
}
```