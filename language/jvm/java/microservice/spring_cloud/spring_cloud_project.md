# Spring Cloud项目


- pom.xml
```xml


<dependencyManagement>
    <dependencies>
        <dependency>
            <groupId>org.springframework.cloud</groupId>
            <artifactId>spring-cloud-dependencies</artifactId>
            <version>Greenwich.SR6</version>
            <type>pom</type>
            <scope>import</scope>
        </dependency>
    </dependencies>
</dependencyManagement>


<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-dependencies</artifactId>
    <version>2020.0.3</version>
    <type>pom</type>
    <scope>import</scope>
</dependency>

```

---
## 远程调用
- RestTemplate
```java
@RestController
public class ConsumerController {

    @Autowired
    private RestTemplate restTemplate;

    @Bean
    public RestTemplate restTemplate() {
        RestTemplate restTemplate = new RestTemplate();
        return restTemplate;
    }

    @Value(value = "${service.provider.url}")
    private String serviceProviderUrl;

    @GetMapping(value = "/{id}")
    public Result getById(@PathVariable Long id) {
        return restTemplate.getForObject(serviceProviderUrl + id, Result.class);
    }



}


```


---
