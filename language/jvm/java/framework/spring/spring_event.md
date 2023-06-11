# Spring Event

- 领域驱动设计DDD(Domain Driven Design)

- 聚合

- 批量

- 实现事件源模式
- 限界上下文集成



---



- 实现`ApplicationListener`接口，重写`onApplicationEvent`方法
- 添加`@EventListener`或`@TransactionEventListener`
    - `@TransactionEventListener`注解：事务提交后处理事件，必须在事务上下文中
- 使用`@Async`注解


- 发布事件：`ApplicationEventPublisher`类`publishEvent`方法


---
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


