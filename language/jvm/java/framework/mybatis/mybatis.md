

---

spring-boot + mybatis/mybatis-plus

配置参数前缀mybatis或mybatis-plus

参数项config-location是配置mybatis-config.xml路径的
参数项mapper-locations是配置XxxMapper.xml路径的

参数项type-aliases-package是配置数据库表映射实体类所在包路径的



---

- 日志

```yaml
mybatis:
  configuration:
    log-impl: org.apache.ibatis.logging.stdout.StdOutImpl



mybatis-plus:
  configuration:
    log-impl: org.apache.ibatis.logging.stdout.StdOutImpl

```


