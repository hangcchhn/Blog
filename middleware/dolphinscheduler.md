# DolphinScheduler


- CentOS/Ubuntu/Debian/Fedora
```sh
yum install -y psmisc
apt install psmisc
```


```sql
CREATE DATABASE dolphinscheduler DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
GRANT ALL PRIVILEGES ON dolphinscheduler.* TO 'root'@'%' IDENTIFIED BY 'chench';
GRANT ALL PRIVILEGES ON dolphinscheduler.* TO 'root'@'localhost' IDENTIFIED BY 'chench';
flush privileges;

```


---
- conf/datasource.properties

```ini
spring.datasource.driver-class-name=com.mysql.jdbc.Driver
spring.datasource.url=jdbc:mysql://127.0.0.1:3306/dolphinscheduler?useUnicode=true&characterEncoding=UTF-8
spring.datasource.username=root
spring.datasource.password=chench


```


- `./script/create-dolphinscheduler.sh`

---

- conf/config/install_config.conf

- conf/env/dolphinscheduler_env.sh

- `./install.sh`

```
jps

ApiApplicationServer
MasterServer
WorkerServer
LoggerServer
AlertServer
```

---
- zookeeper


- http://192.168.10.171:12345/dolphinscheduler
    - admin/dolphinscheduler123


- ./bin/stop-all.sh
- ./bin/start-all.sh