# ribbon


```xml
<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-starter-netflix-ribbon</artifactId>
</dependency>

```
## 接口IRule:默认实现ZoneAvoidanceRule

- RoundRobinRule:轮询规则
- AvailabilityFilteringRule
- WeightedResponseTimeRule:以响应时间作为权重值
- ZoneAvoidanceRule
- BestAvailableRule
- RandomRule:随机
- RetryRule:重试

---

## eureka + ribbon
- RibbonConfiguration.java
```java
public Class RibbonConfiguration {

    @Bean
    public IRule randomRule(){
        //随机规则
        RandomRule randomRule = new RandomRule();
        return randomRule;
    }
}
```
- ConsumerRibbonClient.java
```java
@Configuration
@RibbonClient(name = "#{service.instance.name}", configuration = RibbonConfiguration.class)
public class ConsumerRibbonClient {

    @Bean
    @LoadBalanced
    public RestTemplate restTemplate() {
        RestTemplate restTemplate = new RestTemplate();
        return restTemplate;
    }
}

```



- application.properties
```ini

service.instance.name=provider-service

# 验证
ribbon.eager-load.enabled=true # 开启饥饿加载
ribbon.eager-load.clients=provider-service
provider-service.ribbon.NFLoadBalancerRuleClassName=com.netflix.loadbalancer.RandomRule

```