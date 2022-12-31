
# java scheduled task
> java语言实现定时任务方式


---
## java语言原生方式实现定时任务

- Timer+TimeTask实现方式

- ScheduleExecutorService实现方式

---
## spring框架多种方式配置定时任务

- spring-context

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
- 原理:ScheduledAnnotationBeanPostProcessor.postProcessAfterInitialization


- spring-boot动态管理定时任务：实现SchedulingConfigurer接口，重写configureTasks方法


---
## quartz框架实现动态配置定时任务

- spring-boot 2.x集成quartz实现动态管理定时任务

```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-quartz</artifactId>
</dependency>

```
```java
@Service
public class SchedulerService {
    @Autowired
    private Scheduler scheduler;

    // 动态管理定时任务
}

```


---
## xxl-job

---

## PowerJob

---

## ScheduleX 2.0


---
## cron expression
> java cron


| 字段名称 | 取值范围 |
| :- | :- |
| 秒(second) | 0-59 , - / * |
| 分(minute) | 0-59 , - / * |
| 时(hour) | 0-23 , - / * |
| 日(day of month) | 1-31 , - / * ? L W C |
| 月(month) | 1-12(JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC) , - * / |
| 周(day of week) | 1-7(SUN MON TUE WED THU FRI SAT) , - / * ? L C # |
| 年(year)[可选]| 1970-2099 , - / * |

- ab:a和b
- a-b:从a到b
- a/b:从a开始，每次递增b

- *:表示所有值
- ?:表示不指定

- ?:day of month,day of week

- L(last day):day of month,day of week.
    - 3L:每月或每周的倒数第三个天

- W(week day):day of month
    - 3W:每月的三个工作日
    - 3LW:每月的倒数第三个工作日

- C:calendar

- 关于cron表达式中week数字取值范围是1-7，建议使用英文缩写MON-SUN
    - quartz从SUN开始
    - spring从MON开始

---
- spring
```
CronSequenceGenerator cronSequenceGenerator = new CronSequenceGenerator("44 33 9 ? * 1");
Date next = cronSequenceGenerator.next(new Date());
System.out.println(next);
```
- quartz
```java
CronExpression cronExpression = new CronExpression("44 33 9 ? * 2");
Date nextValidTimeAfter = cronExpression.getNextValidTimeAfter(new Date());
System.out.println(nextValidTimeAfter.toString());

```

---
