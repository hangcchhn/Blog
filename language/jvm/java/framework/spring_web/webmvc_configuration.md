


- 添加拦截器
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