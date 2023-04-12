# Spring WebSocket


```xml

<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-websocket</artifactId>
</dependency>


```


---

```java
@Configuration
public class WebSocketConfiguration implements WebSocketConfigurer {


    @Autowired
    private TextWebSocketHandler textWebSocketHandler;

    @Override
    public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
        registry.addHandler(textWebSocketHandler, "/websocket").withSockJS();
    }
}

```

- AbstractWebSocketHandler
    - TextWebSocketHandler
    - BinaryWebSocketHandler