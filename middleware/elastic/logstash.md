# LogStash




```sh
./bin/logstash -e "input{stdin{}} output{stdout{}}"
./bin/logstash -e 'input{stdin{}}output{stdout{codec=>rubydebug}}'

input{
    stdin{

    }
}
output{
    # 格式化输入JSON
    stdout {
        codec => rubydebug
    }
}




# 启动后日志打印停止后输入
Hello Logstash
# 屏幕显示下列表示启动成功
./vendor/bundle/jruby/2.5.0/gems/awesome_print-1.7.0/lib/awesome_print/formatters/base_formatter.rb:31: warning: constant ::Fixnum is deprecated
{
    "@timestamp" => 2021-02-26T10:55:39.822Z,
      "@version" => "1",
       "message" => "Hello Logstash",
          "host" => "chench"
}
```

版本适配关系
Elasticsearch Kibana  X-Pack  Beats^* Elastic Agent^* Logstash^*  ES-Hadoop (jar)*****
https://www.elastic.co/cn/support/matrix#matrix_compatibility

logstash程序的logstash-input-log4j只支持2.4.x

版本匹配选择：Elasticsearch = Kibana：（5.6.16） Logstash：（2.4.1）

Elasticsearch = Kibana =  Logstash：（7.3.0）
---

## log4j
```conf
input {
    log4j {
        mode => "server"
        host => "0.0.0.0"
        port => 4560
    }
}
output {
    elasticsearch {
        hosts => "localhost:9200"
        index => "logstash"
    }
    stdout {
        codec => rubydebug
    }
}
```

./bin/logstash -f ./config/log4j.conf



./bin/logstash-plugin install --no-verify logstash-input-log4j



- log4j.properties
```properties
log4j.appender.Socket=org.apache.log4j.net.SocketAppender
log4j.appender.Socket.RemoteHost=192.168.10.153
log4j.appender.Socket.port=4560
log4j.appender.Socket.ReconnectionDelay=60000
log4j.appender.Socket.LocationInfo=true
log4j.appender.Socket.layout=org.apache.log4j.PatternLayout
log4j.appender.Socket.layout.conversionPattern=%d{ABSOLUTE} %5p %c{1}:%L - %m%n
```

- log4j.xml
```xml
<appender name="Socket" class="org.apache.log4j.net.SocketAppender">
    <param name="RemoteHost" value="192.168.10.153" />
    <param name="port" value="4560" />
    <param name="ReconnectionDelay" value="60000" />
    <param name="LocationInfo" value="true" />
    <layout class="org.apache.log4j.PatternLayout">
        <param name="ConversionPattern" value="%d{ABSOLUTE} %5p %c{1}:%L - %m%n" />
    </layout>
</appender>
```


---

## logstash tcp
- ./config/tcp.conf
```conf
input {
    tcp {
        mode => "server"
        host => "0.0.0.0"
        port => 4560
        codec => json_lines
    }
}
output {
    elasticsearch {
        hosts => "localhost:9200"
        index => "logstash"
    }
    stdout {
        codec => rubydebug
    }
}
```

- `./bin/logstash -f ./config/tcp.conf`

---
## log4j2
```xml
<Socket name="Socket" host="192.168.10.153" port="4560" protocol="TCP">
    <PatternLayout>
        <Charset>UTF-8</Charset>
         <!--<Pattern>%d %p %c{1.} [%t] %m%n</Pattern>-->
        <Pattern>{"logger": "%logger", "level": "%level", "msg": "%message"}%n</Pattern>
    </PatternLayout>
</Socket>
```


- pom.xml
<dependency>
    <groupId>net.logstash.logback</groupId>
    <artifactId>logstash-logback-encoder</artifactId>
    <version>4.10</version>
</dependency>


---
## logback

```xml
<?xml version="1.0" encoding="UTF-8" ?>
<configuration debug="true">

    <appender name="Console" class="ch.qos.logback.core.ConsoleAppender">
        <!--<layout></layout>-->
        <!--ch.qos.logback.classic.encoder.PatternLayoutEncoder-->
        <encoder>
            <!--<pattern>%d{HH:mm:ss.SSS} [%thread] %-5level %logger{36} - %msg%n</pattern>-->
            <pattern>%d{yyyy-MM-dd HH:mm:ss.SSS} [%thread] %-5level %logger{10} - %msg%n</pattern>
        </encoder>
    </appender>

    <appender name="Logstash" class="net.logstash.logback.appender.LogstashTcpSocketAppender">
        <destination>192.168.10.153:4560</destination>
        <encoder charset="UTF-8" class="net.logstash.logback.encoder.LogstashEncoder"/>
    </appender>

    <root level="DEBUG">
        <appender-ref ref="Console"/>
        <appender-ref ref="Logstash"/>
    </root>

</configuration>
```


- logback-spring.xml
```xml
<configuration>
    <include resource="org/springframework/boot/logging/logback/defaults.xml"/>
    <include resource="org/springframework/boot/logging/logback/console-appender.xml"/>

    <appender name="logstash" class="net.logstash.logback.appender.LogstashTcpSocketAppender">
        <destination>192.168.10.168:4560</destination>
        <encoder charset="UTF-8" class="net.logstash.logback.encoder.LogstashEncoder"/>
    </appender>
    <root level="INFO">
        <appender-ref ref="CONSOLE"/>
        <appender-ref ref="logstash"/>
    </root>
</configuration>
```









---


```sh
ps -def|grep elasticsearch
ps -def|grep kibana
ps -def|grep logstash
```
---


```xml
<?xml version="1.0" encoding="UTF-8"?>
<configuration debug="false">
    <contextName>Logback For demo Mobile</contextName>
    <property name="LOG_HOME" value="/log" />
    <springProperty scope="context" name="appName" source="spring.application.name"
                    defaultValue="localhost" />
    <!-- ... -->

    <appender name="ROLLING_FILE" class="ch.qos.logback.core.rolling.RollingFileAppender">
        <!-- ... -->
        <encoder class="ch.qos.logback.classic.encoder.PatternLayoutEncoder">
            <pattern>%d{yyyy-MM-dd HH:mm:ss.SSS} [%thread] %-5level %logger{25} ${appName} -%msg%n</pattern>
        </encoder>
        <!-- ... -->
    </appender>
    <!-- ... -->
</configuration>

```
---

- logstash-shipper.conf
```conf
input {
    file {
        path => [
            # 这里填写需要监控的文件
            "/log/sb-log.log"
        ]
    }
}

output {
    # 输出到redis
    redis {
        host => "10.140.45.190"   # redis主机地址
        port => 6379              # redis端口号
        db => 8                   # redis数据库编号
        data_type => "channel"    # 使用发布/订阅模式
        key => "logstash_list_0"  # 发布通道名称
    }
}
```

- `./bin/logstash -f logstash-shipper.conf`


- logstash-indexer.conf
```conf
input {
    redis {
        host      => "192.168.142.131"    # redis主机地址
        port      => 6379               # redis端口号
        db        => 8                  # redis数据库编号
        data_type => "channel"          # 使用发布/订阅模式
        key       => "sb-logback"  # 发布通道名称
    }
}

filter {
     #定义数据的格式
     grok {
       match => { "message" => "%{TIMESTAMP_ISO8601:time} \[%{NOTSPACE:threadName}\] %{LOGLEVEL:level}  %{DATA:logger} %{NOTSPACE:applicationName} -(?:.*=%{NUMBER:timetaken}ms|)"}
     }
}

output {
    stdout {}
    elasticsearch {
        hosts => "localhost:9200"
        index => "logback"
   }
}
```

- `./bin/logstash -f logstash-indexer.conf`


---

```
[program:elasticsearch]
environment=JAVA_HOME="/usr/java/jdk1.8.0_221/"
directory=/home/elk/elk/elasticsearch
user=elk
command=/home/elk/elk/elasticsearch/bin/elasticsearch

[program:logstash]
environment=JAVA_HOME="/usr/java/jdk1.8.0_221/"
directory=/home/elk/elk/logstash
user=elk
command=/home/elk/elk/logstash/bin/logstash -f /home/elk/elk/logstash/indexer-logstash.conf

[program:kibana]
environment=LS_HEAP_SIZE=5000m
directory=/home/elk/elk/kibana
user=elk
command=/home/elk/elk/kibana/bin/kibana
```



