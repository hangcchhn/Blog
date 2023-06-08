# Spring并发


---

---
## 异步调用




---

## 配置线程池

- Spring Boot 2.1.x之前：实现`SchedulingConfigurer`接口
    - 重写`configureTasks`方法
```java
public class SchedulingConfiguration implements SchedulingConfigurer {

    @Bean("scheduledThreadPoolExecutor")
    public Executor scheduledThreadPoolExecutor() {
        ThreadPoolTaskScheduler scheduler = new ThreadPoolTaskScheduler();
        scheduler.setThreadNamePrefix("foxScheduling-");
        scheduler.setPoolSize(10);
        return scheduler;
    }

    @Override
    public void configureTasks(ScheduledTaskRegistrar scheduledTaskRegistrar) {
        scheduledTaskRegistrar.setScheduler(scheduledThreadPoolExecutor());
    }
}


```
- Spring Boot 2.1.x之后：
- 新增cron表达式无效标志：`CRON_DISABLED = "-";`
- `TaskExecutionAutoConfiguration`自动配置类
    - `TaskExecutionProperties`类：读取`spring.task.execution`前缀配置
- `TaskSchedulingAutoConfiguration`自动配置类
    - `TaskSchedulingProperties`类：读取`spring.task.scheduling`前缀配置

- `AsyncExecutionAspectSupport`抽象类的`getDefaultExecutor(BeanFactory beanFactory)`方法
    - 先根据`beanFactory.getBean(TaskExecutor.class)`获取，如果异常就根据`beanFactory.getBean("taskExecutor", Executor.class)`获取


- 通过实现`AsyncConfigurer`接口定制异步调用
    - `AsyncUncaughtExceptionHandler`类处理异步调用异常

- 自定义线程池
    - 实现`AsyncConfigurer`接口
    - 继承`AsyncConfigurerSupport`类
    - 配置名称为`taskExecutor`的`Executor`类型Bean对象

- `TaskExecutor`接口继承`Executor`接口，实现`TaskExecutor`接口的类
    - `SyncTaskExecutor`类：当前线程同步执行
    - `SimpleAsyncTaskExecutor`类：
    - `ConcurrentTaskExecutor`类：
    - `ThreadPoolTaskExecutor`类：

- 推荐使用`ThreadPoolTaskExecutor`创建线程池，明确配置含义和运行规则
    -`initialize`方法会被Spring框架初化Bean对象时自动调用

- `@Async`注解使用的默认线程池是`SimpleAsyncTaskExecutor`，默认来一个任务就创建一个线程，没有达到线程池复用线程的目的，还会导致线程创建过多的问题；
- `SimpleAsyncTaskExecutor`提供了限流机制`ConcurrencyThrottleSupport`; 通过`concurrencyLimit`属性来控制开关，当`concurrencyLimit>=0`时开启限流机制，默认关闭限流机制即`concurrencyLimit=-1`，当关闭情况下会不断创建新的线程来处理任务
---

- 使用@Async注解修饰的方法要求返回值是`void`或`Future<T>`
- 可通过注解参数指向线程池执行异步任务，即`@Async(value = "threadPool")`
    - `AsyncExecutionAspectSupport`抽象类的`determineAsyncExecutor`方法
---

---


## 定时任务

- `ThreadPoolTaskScheduler`
- `ScheduledExecutorService`
- `TaskSchedulerCustomizer`对`ThreadPoolTaskScheduler`进行定制，如`TaskDecorator`
- `@Scheduled`
```java
@Component
@EnableScheduling
public class Job {

    // 每天00:00:00执行
    @Scheduled(cron = "${job.task.cron:00 00 00 * * ?}")
    private void task() {
        // 调用定时任务业务
    }
}

```
- 原理:`ScheduledAnnotationBeanPostProcessor.postProcessAfterInitialization`
- 定时任务默认是单线程的，默认情况下，上一个定时任务没有执行完，下一个定时任务是不会开始的。

- Spring Boot动态管理定时任务：


---




