# Spring WebSocket


```xml


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