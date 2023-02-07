

## 优先级

1. 根路径:`file:/`
2. 类路径:`classpath:/`

---
1. file:/
2. classpath:/
3. –file:./config/
4. –file:./
5. –classpath:/config/
6. –classpath:/


---

## 多个默认配置文件读取顺序

1. /config/application.properties
2. /config/application.yml
3. /application.properties
4. /application.yml
5. /src/main/resources/config/application.properties
6. /src/main/resources/config/application.yml
7. /src/main/resources/application.properties
8. /src/main/resources/application.yml

---





## 不同环境使用不同配置文件

1. 在启动程序命令中加上激活配置文件参数:-Dspring.profiles.active=develop
2. 在默认配置文件中加上激活配置文件参数:spring.profiles.active=release
3. 在默认配置文件中加上包含配置文件参数:spring.profiles.include=dev1,dev2


---


## 按顺序加载配置，重复配置会覆盖
- local
- dev
- test

- sit:System Integrate Test（系统集成测试）
- uat:User Acceptance Test（用户验收测试）
- pet:Performance Evaluation Test（性能评估测试）

- live
- prod


- 配置文件应用监听:`org.springframework.boot.context.config.ConfigFileApplicationListener`
```ini
spring.config.name=application
# application-{active,include}.{properties,yml}

默认配置:
spring.config.location=classpath:/,classpath:/config/,file:./,file:./config/

```

启动参数:
- `-Dspring.config.location=directory/`
测试结果:如果指定配置文件目录必须带上最后的斜线
- `-Dspring.config.location=directory/application.properties`

- 在默认配置文件中加上参数spring.config.location不生效


- `-Dspring.config.additional-location=`
用法同上，效果时在原有的配置文件基础上加上额外的配置文件
