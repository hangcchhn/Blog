## nacos
> Dynamic Naming and Configuration Service

---
## 部署
### 单机模式

```sh
./bin/startup.sh -m standalone &

```
- http://localhost:8488
    - nacos/nacos

---
### 集群部署

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
nacos.inetutils.ip-address=192.168.10.201



spring.datasource.platform=mysql
db.num=1
db.url.0=jdbc:mysql://127.0.0.1:3306/nacos?autoReconnect=true&useUnicode=true&useSSL=false&serverTimezone=UTC
db.user.0=nacos
db.password.0=nacos

```




---


## 版本
- 1.x:http

- 2.x:grpc


---

```xml



```