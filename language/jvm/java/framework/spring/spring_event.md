# Spring Event

- 领域驱动设计(Domain Driven Design, DDD)


```java

public class MyEvent {
    private String message;

    public MyEvent(String message) {
        this.message = message;
    }

    public String getMessage() {
        return message;
    }
}

@Component
public class MyEventListener {

    // @Async  // 异步
    @EventListener
    public void handleMyEvent(MyEvent event) {
        // 在新的线程中执行异步逻辑
        // ...
    }
}


@Component
public class MyEventPublisher {

    @Autowired
    private ApplicationEventPublisher eventPublisher;

    public void publishEvent(String message) {
        MyEvent event = new MyEvent(message);
        eventPublisher.publishEvent(event);
    }
}



```


---


```java
     @TransactionalEventListener
    public void handleMyTransactionalEvent(MyTransactionalEvent event) {
        // 处理 MyTransactionalEvent
    }

```