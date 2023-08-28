# XXL-JOB


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

- docker

```sh
docker pull xuxueli/xxl-job-admin:2.4.0

docker run -p 8080:8080 -v /tmp:/data/applogs --name xxl-job-admin  -d xuxueli/xxl-job-admin:2.4.0

docker run --name xxl-job-admin -p 8080:8080 -d xuxueli/xxl-job-admin:2.4.0

```

---

- GLUE(JAVA):继承`IJobHandler`类