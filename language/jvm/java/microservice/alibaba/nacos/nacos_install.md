# Nacos Install
---
## 单机部署

```sh
./bin/startup.sh -m standalone &

```
- http://localhost:8488
    - nacos/nacos

---
## 集群部署

- MySQL
```sql
create database nacos;
use nacos;
source ./etc/nacos-mysql.sql;


```

- conf/cluster.conf
```
localhost:18848
localhost:28848
localhost:38848

```
- conf/application.properties
```ini
# 集群配置域名
nacos.inetutils.prefer-hostname-over-ip=true
# 多网卡指定IP
nacos.inetutils.ip-address=localhost


# 数据库配置
spring.datasource.platform=mysql
db.num=1
db.url.0=jdbc:mysql://localhost:3306/nacos?characterEncoding=utf8&connectTimeout=1000&socketTimeout=3000&autoReconnect=true&useUnicode=true&useSSL=false&serverTimezone=UTC
db.user.0=root
db.password.0=chench

```
---