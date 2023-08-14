# Spring Boot应用




- 自定义实现`SpringApplicationRunListener`接口，在Spring SPI的spring.factories中配置
    - 参考[Java SPI](../../grammar/core/java_spi.md)
- Spring Boot框架中`EventPublishingRunListener`类实现了`SpringApplicationRunListener`接口
    - 观察者模式
- 调用`SimpleApplicationEventMulticaster`类`multicastEvent`方法遍历`SpringApplication`类的`ApplicationListener`接口实现类集合
- `EventPublishingRunListener`类`contextLoaded`方法：如果`ApplicationListener`监听器还实现了`ApplicationContextAware`接口，就给监听器设置`ConfigurableApplicationContext`上下文，在此之后使用`ApplicationEventPublisher`接口`publishEvent`方法执行回调