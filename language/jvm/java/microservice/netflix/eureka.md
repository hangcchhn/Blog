# eureka


## 服务端
> 注册中心


- 服务注册:register

- pom.xml
```xml

<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-starter-netflix-eureka-server</artifactId>
</dependency>

```

- application.properties
```ini
server.port=8761
eureka.instance.hostname=127.0.0.1
eureka.client.register-with-eureka=false
eureka.client.fetch-registry=false
eureka.client.service-url.defaultZone=http://${eureka.instance.hostname}:${server.port}/eureka/

```

```
@EnableEurekaServer
@SpringBootApplication
public class EurekaServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(EurekaServerApplication.class, args);
	}

}

```


## 客户端
- 服务发现:discovery
- 服务提供者
- 服务消费者


---
- 服务提供者
```xml
<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-starter-netflix-eureka-client</artifactId>
</dependency>


```

- EurekaProviderApplication.java
```java
@EnableEurekaClient
@SpringBootApplication
public class EurekaProviderApplication {

	public static void main(String[] args) {
		SpringApplication.run(EurekaClientApplication.class, args);
	}

}
```

```ini
spring.application.name=provider-service
eureka.instance.prefer-ip-address=true
eureka.client.service-url.defaultZone=http://127.0.0.1:8761/eureka

```


---

## 服务消费者

## 负载均衡
- LoadBalancerClient
```java

@RestController
public class ConsumerController {

    @Autowired
    private RestTemplate restTemplate;

    @Autowired
    private LoadBalancerClient loadBalancerClient;

    @Bean
    @LoadBalanced
    public RestTemplate restTemplate() {
        RestTemplate restTemplate = new RestTemplate();
        return restTemplate;
    }


    @Value(value = "${service.instance.name}")
    private String serviceInstanceName;

    @GetMapping(value = "/{id}")
    public Result user(@PathVariable Long id) {
        return restTemplate.getForObject(
            Sting.format("http://%s/%d", serviceInstanceName, id) + , Result.class);
    }

    @GetMapping(value = "choose")
    public void choose(){
        ServiceInstance serviceInstance = loadBalancerClient.choose(serviceInstanceName);
        logger.info("{}={}:{}", serviceInstance.getServiceId(),
            serviceInstance.getHost(), serviceInstance.getPort());
    }
}

```


