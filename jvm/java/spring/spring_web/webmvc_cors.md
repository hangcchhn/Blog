# CORS

- 跨域资源共享(Cross-Orign Resources Sharing)

```java

    /**
     * 添加跨域请求配置
     * @param corsRegistry
     */
    @Override
    public void addCorsMappings(CorsRegistry corsRegistry) {

        corsRegistry
                // 设置允许跨域请求的路径
                .addMapping("/**")
                // 设置允许跨域请求的域名
                .allowedOriginPatterns("*")
                // 设置允许跨域请求的method方式
                .allowedMethods("GET", "POST", "DELETE", "PUT")
                // 设置允许跨域请求的header属性
                .allowedHeaders("*")
                // 是否允许cookie
                .allowCredentials(true)
                // 跨域允许时间
                .maxAge(3600);
    }

```