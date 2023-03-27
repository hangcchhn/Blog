# Spring WebFlux

```java

@Configuration
public class RouterConfiguration {

    @Bean
    public RouterFunction<ServerResponse> nettyRouter(NettyHandler nettyHandler) {
        return RouterFunctions.route()
                .GET("/json", RequestPredicates.accept(MediaType.APPLICATION_JSON), nettyHandler::json)
                .GET("/text", RequestPredicates.accept(MediaType.TEXT_PLAIN), nettyHandler::text)
                .build();
    }
}




```



```java

@Component
public class NettyHandler {

    @Value("${hn.cch.test-value:test-value}")
    private String testValue;

    public Mono<ServerResponse> json(ServerRequest request) {
        return ServerResponse.ok().contentType(MediaType.APPLICATION_JSON)
                .body(BodyInserters.fromValue("Spring WebFlux Json"));
    }

    @Autowired
    private LoadBalancerExchangeFilterFunction filterFunction;

    public Mono<String> stringMono() {
        return WebClient.builder()
            .baseUrl("")
            .filter(filterFunction)
            .build()
            .get()
            .uri("")
            .retrieve()
            .bodyToMono(String.class);
    }

```
