# DolphinScheduler


- Azkaban
    - Hadoop
- Oozie:重量级

- Airflow:由Python实现
    - http://airflow.apache.org/
    - Airflow 1.10.x -> Python 2.7.x
    - Airflow 2.2.x -> Python 3.6.x
- DolphinScheduler


---


- CentOS/Ubuntu/Debian/Fedora
```sh
# CentOS
yum install -y psmisc
# Ubuntu
apt install psmisc
```


```sql
CREATE DATABASE dolphinscheduler DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;

```


---
- conf/datasource.properties

```ini
spring.datasource.driver-class-name=com.mysql.jdbc.Driver
spring.datasource.url=jdbc:mysql://127.0.0.1:3306/dolphinscheduler?useUnicode=true&characterEncoding=UTF-8
spring.datasource.username=root
spring.datasource.password=chench


```
- `mv mysql-connector-java-5.1.47.jar ./lib/`

- `./script/create-dolphinscheduler.sh`

---

- conf/config/install_config.conf

- conf/env/dolphinscheduler_env.sh

```sh
export HADOOP_HOME=/opt/hadoop/hadoop-2.7.7
export HADOOP_CLASSPATH=$($HADOOP_HOME/bin/hadoop classpath)
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export YARN_CONF_DIR=$HADOOP_HOME/etc/hadoop
export SPARK_HOME=/opt/spark/spark-2.4.8
export JAVA_HOME=/opt/java/jdk1.8.0_202
export PATH=$HADOOP_HOME/bin:$SPARK_HOME/bin:$JAVA_HOME/bin:$PATH

```

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
- hadoop


- http://192.168.10.171:12345/dolphinscheduler
    - admin/dolphinscheduler123

---

```sh

./bin/dolphinscheduler-daemon.sh start standalone-server

vim ./bin/env/dolphinscheduler_env.sh

./bin/stop-all.sh
./bin/start-all.sh

```

---

- dolphinscheduler-3.0.3
- hadoop-3.0.3
- spark-3.0.3