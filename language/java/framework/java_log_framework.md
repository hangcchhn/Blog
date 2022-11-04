
# Java Log Framework
> java语言日志框架

- 日志模块
    - JUL(java.util.logging)
    - log4j
    - log4j2
    - logback

- 日志门面
    - JCL(Jakarta Commons Logging):commons-logging
    - slf4j(Simple Logging Facade for Java)


## JUL
> java.util.logging
- Logger
- Appender(Handler)
- Layout(Formatter)
- Level
- Filter


---
## log4j

- Logger:
    - root
    - package
- Appender:
    - ConsoleAppender:控制台
    - FileAppender:文件
    - DailyRollingFileAppender:时间
    - RollingFileAppender:大小
    - JDBCAppender:数据库

- Layout
    - SimpleLayout
    - HTMLLayout
    - PatternLayout

| 格式 | 说明 |
| :-: | :- |
| %m | 输出代码中指定的日志信息 |
| %p | 输出优先级，及 DEBUG、INFO 等 |
| %n |换行符(Windows平台的换行符为 "\n"，Unix 平台为 "\n") |
| %r | 输出自应用启动到| 输出该 log 信息耗费的毫秒数 |
| %c | 输出打印语句所属的类的全名 |
| %t | 输出产生该日志的线程全名 |
| %d | 输出服务器当前时间，默认为 ISO8601，也可以指定格式，如:%d{yyyy年MM月dd日 HH:mm:ss} |
| %l | 输出日志时间发生的位置，包括类名、线程、及在代码中的行数。如:Test.main(Test.java:10) |
| %F | 输出日志消息产生时所在的文件名称 |
| %L | 输出代码中的行号 %% | 输出一个 "%" 字符 |
| * | 可以在 % 与字符之间加上修饰符来控制最小宽度、最大宽度和文本的对其方式。如: |
| %5c | 输出category名称，最小宽度是5，category<5，默认的情况下右对齐 |
| %-5c | 输出category名称，最小宽度是5，category<5，"-"号指定左对齐,会有空格 |
| %.5c | 输出category名称，最大宽度是5，category>5，就会将左边多出的字符截掉，<5不会有空格 |
| %20.30c | category名称<20补空格，并且右对齐，>30字符，就从左边交远销出的字符截掉 |


---


## log4j-extras

```properties
# 时间和大小策略滚动文件
log4j.appender.TimeSize=org.apache.log4j.rolling.RollingFileAppender
log4j.appender.TimeSize.layout=org.apache.log4j.PatternLayout
log4j.appender.TimeSize.layout.conversionPattern=%d{yyyy-MM-dd HH:mm:ss,SSS} - %p - %l - %m %n
log4j.appender.TimeSize.rollingPolicy=org.apache.log4j.rolling.TimeBasedRollingPolicy
log4j.appender.TimeSize.rollingPolicy.fileNamePattern=./logs/%d{yyyy-MM-dd}/extras-%d{yyyy-MM-dd-HH-mm-ss}.log.gz
log4j.appender.TimeSize.triggeringPolicy=org.apache.log4j.rolling.SizeBasedTriggeringPolicy
log4j.appender.TimeSize.triggeringPolicy.maxFileSize=1KB
# activeFileName字段过时
# log4j.appender.TimeSize.rollingPolicy.activeFileName=./logs/%d{yyyy-MM-dd}/extras-%d{yyyy-MM-dd-HH-mm-ss}.log
# maxBackupIndex字段无效
# log4j.appender.TimeSize.triggeringPolicy.maxBackupIndex=10
```


---

## slf4j
- Binding:
    - slf4j-api

    - slf4j-nop

    - slf4j-jcl

    - slf4j-simple

    - slf4j-jdk14

    - slf4j-log4j12
    - log4j

- Bridging:
    - log4j-over-slf4j
    - jul-to-slf4j
    - jcl-over-slf4j



---

## log4j2
- package
    - log4j-core
    - log4j-api
    - slf4j-api
    - log4j-slf4j-impl



## 异步日志

- Disruptor技术:无锁的线程间通信库

    默认情况下，异步日志记录器不会将位置传递给I/O线程，可以使用includeLocation参数配置


- 无垃圾——0GC：字节数组全复用，减少创建和回收


- dependency
```xml
<dependency>
    <groupId>com.lmax</groupId>
    <artifactId>disruptor</artifactId>
    <version>3.3.4</version>
</dependency>
```


- implements
    - AsyncAppender
    - AsyncLogger

1. 全局异步

```sh
# java程序启动参数
java xxx \
-Dlog4j2.contextSelector=org.apache.logging.log4j.core.async.AsyncLoggerContextSelector
```

- log4j2.component.properties
```properties
Log4jContextSelector=org.apache.logging.log4j.core.async.AsyncLoggerContextSelector
```

2. 混合异步

- log4j2.xml
```xml
<?xml version="1.0" encoding="UTF-8"?>
<Configuration status="WARN">
  <properties>
    <property name="LOG_HOME">D:/logs</property>
  </properties>
  <Appenders>
<File name="file" fileName="${LOG_HOME}/myfile.log">
<PatternLayout>
<Pattern>%d %p %c{1.} [%t] %m%n</Pattern> </PatternLayout>
    </File>
    <Async name="Async">
      <AppenderRef ref="file"/>
    </Async>
  </Appenders>
  <Loggers>
<AsyncLogger name="com.itheima" level="trace" includeLocation="false" additivity="false">
      <AppenderRef ref="file"/>
    </AsyncLogger>
    <Root level="info" includeLocation="true">
      <AppenderRef ref="file"/>
    </Root>
  </Loggers>
</Configuration>
```


---
## logback
- logback-core
- logback-classic
- logback-access




---
## spring boot框架默认集成logback日志

- pom.xml
```xml
<dependency>
    <artifactId>spring-boot-starter-logging</artifactId>
    <groupId>org.springframework.boot</groupId>
</dependency>
```

- application.properties

```properties
logging.level.hn.cch=trace
logging.file=./log/log.log

logging.pattern.console=%d{yyyy-MM-dd HH:mm:ss,SSS} [%thread] %-5level %logger{50} - %msg%n
logging.pattern.file=%d{yyyy-MM-dd HH:mm:ss,SSS} [%thread] %-5level %logger{50} - %msg%n
```

- logback.xml
```xml

```
- log4j2.xml

```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-web</artifactId>
    <exclusions>
        <!--排除logback-->
        <exclusion>
            <artifactId>spring-boot-starter-logging</artifactId>
            <groupId>org.springframework.boot</groupId>
        </exclusion>
    </exclusions>
</dependency>
<!-- 添加log4j2 -->
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-log4j2</artifactId>
</dependency>
```
