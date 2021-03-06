
```java
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity httpSecurity) throws Exception {
        httpSecurity.cors() // 跨域
        .csrf().disable().and() //
        // 使用Token，设置Session为无状态
        .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS).and()
        .exceptionHandling().authenticationEntryPoint(unauthorizedHandler).and()
        // 登录
        .formLogin().loginProcessingUrl("/login")
        // .usernameParameter("username").passwordParameter("password")
        .successHandler(successHandlerImpl).failureHandler(failureHandlerImpl)
        // 注销
        .and().logout().logoutUrl("/logout").logoutSuccessHandler(logoutSuccessHandlerImpl);

        httpSecurity.addFilter();
    }
}


```
