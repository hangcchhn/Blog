# swagger
> Swagger2

- springfox-swagger-ui

```xml
<dependency>
    <groupId>io.springfox</groupId>
    <artifactId>springfox-swagger2</artifactId>
    <version>2.9.2</version>
</dependency>

<dependency>
    <groupId>io.springfox</groupId>
    <artifactId>springfox-swagger-ui</artifactId>
    <version>2.9.2</version>
</dependency>
```

```java
@EnableSwagger2
@Configuration
public class SwaggerConfiguration {

    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors
                        .basePackage("hn.cch.spring_boot_bootstrap_swagger.controller"))
                .paths(PathSelectors.any())
                .build();
    }
    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("spring_boot_bootstrap_swagger")
                .description("spring boot bootstrap swagger")
                .termsOfServiceUrl("http://localhost:8888/")
                .contact(new Contact("hangcchhn", "http://cch.hn", "hangcchhn@163.com"))
                .version("1.0")
                .build();
    }
}
```

- http://localhost:8080/swagger-ui.html

---


## swagger-bootstrap-ui
- version<=1.9.6

```xml
<dependency>
    <groupId>io.springfox</groupId>
    <artifactId>springfox-swagger2</artifactId>
    <version>2.8.0</version>
</dependency>

<dependency>
    <groupId>com.github.xiaoymin</groupId>
    <artifactId>swagger-bootstrap-ui</artifactId>
    <version>1.9.0</version>
</dependency>
```


```java
@EnableSwaggerBootstrapUI
@EnableSwagger2


```
- http://localhost:8080/doc.html


---


## knife4j

- version>=1.9.6

```xml
<dependency>
    <groupId>io.springfox</groupId>
    <artifactId>springfox-swagger2</artifactId>
    <version>2.9.2</version>
</dependency>

<dependency>
    <groupId>com.github.xiaoymin</groupId>
    <artifactId>knife4j-spring-boot-starter</artifactId>
    <version>2.0.9</version>
</dependency>
```

```java
@EnableSwagger2


```
- http://localhost:8080/doc.html


---
```java

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value="接口请求模板",description="适用于本系统所有接口请求")
public class Request<T> {

    @ApiModelProperty(value = "时间戳", example="2001-01-01")
    protected String timeStamp;

}

@RestControler
public class ApiController{

    @ApiOperation(value = "获取单个API接口")
    public Response<ApiResponse> getOneApi(
        @ApiParam("请求参数") @RequestParam(required = false) String param,
        @ApiParam("路径参数") @PathVariable String path,
        @ApiParam("header参数") @RequestHeader String header,
        @ApiParam("cookie参数") @CookieValue String cookie) {

    }
}

```