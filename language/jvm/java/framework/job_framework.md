# Job Framework

---
## xxl-job
- 美团员工许雪里
- xxl-job 2.2.0

### xxl-job-admin

- ./doc/db/tables_xxl_job.sql
```
mysql> create database xxl_job;
mysql> source tables_xxl_job.sql;

```

```sh
vim application.properties

spring.datasource.*
```
- http://ip:8099/xxl-job-admin/
    - username/password:admin/123456

- xxl-job-executor-*.jar

- xxl-job-core
---

## PowerJob
- OPPO,OhMyScheduler



- PowerJob 4.0.1

- powerjob-server
- powerjob-worker


---
```sh
# powerjob-mysql.sql
create database powerjob;

mysql> source powerjob-mysql.sql;

java -jar powerjob-worker-samples-xxx.jar

java -jar powerjob-server-starter-xxx.jar
```
- http://ip:7700
首页注册应用:powerjob-agent-test
---
## ElasticJob

- 由dangdang网开发，后捐献给apache基金会
- Elastic-Job-Lite:以jar包形式提供服务
- Elastic-Job-Cloud:采用自研Mesos Framework的解决方案
---


- 依赖ZooKeeper
- elastic-job 3.0.1

---

- elastic-job-lite-ui:http://ip:8088
    - username/password:root/root

---



- spring-boot & elastic-job




## ScheduleX 2.0
- alibaba