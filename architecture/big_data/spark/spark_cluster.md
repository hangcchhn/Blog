
# Spark Cluster

- [hadoop cluster](../hadoop/hadoop_cluster.md)

---
- ./conf/slaves
```sh
cent01
cent02
cent03
```

- spark-env.sh
```sh
export SPARK_MASTER_HOST=cent01
export SPARK_MASTER_PORT=7077
export SPARK_MASTER_WEBUI_PORT=8089

export SPARK_WORKER_CORES=1
export SPARK_WORKER_MEMORY=1g

export JAVA_HOME=/opt/java/jdk-11.0.9
export HADOOP_HOME=/opt/hadoop/hadoop-3.0.3

export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export YARN_CONF_DIR=$HADOOP_HOME/etc/hadoop

# 使用without-hadoop包时，必须添加SPARK_DIST_CLASSPATH配置
export SPARK_DIST_CLASSPATH=$($HADOOP_HOME/bin/hadoop classpath)
# 动态库
export LD_LIBRARY_PATH=$HADOOP_HOME/lib/native:$LD_LIBRARY_PATH

# 历史服务
export SPARK_HISTORY_OPTS="
-Dspark.history.ui.port=18080
-Dspark.history.fs.logDirectory=hdfs://cent01:9820/directory
-Dspark.history.retainedApplications=30
"

```


```sh
cd /opt/spark/spark-3.0.3/conf
scp -r slaves spark-env.sh spark-defaults.conf root@cent02:$PWD
scp -r slaves spark-env.sh spark-defaults.conf root@cent03:$PWD
```

- `./sbin/start-all.sh`
    - http://cent01:8089

- `./bin/spark-shell --master spark://cent01:7077`
    - http://cent01:4040



---
## 历史服务
- spark-defaults.conf
```conf
spark.master                     spark://cent01:7077
spark.eventLog.enabled           true
spark.eventLog.dir               hdfs://cent01:9820/directory
spark.driver.memory              1g

spark.yarn.historyServer.address=cent01:18080
spark.history.ui.port=18080

```
```sh
hdfs dfs -mkdir -p /directory
mkdir -p /tmp/spark-events


${SPARK_HOME}/sbin/start-history-server.sh
```
- http://cent01:18080

---
## 命令

- 所有节点的启停
    - `./sbin/start-all.sh`
    - `./sbin/stop-all.sh`

- 主要节点的启停
    - `./sbin/start-master.sh`
    - `./sbin/stop-master.sh`


- 辅助节点的启停
    - `./sbin/start-slaves.sh`
    - `./sbin/stop-slaves.sh`

    - `./sbin/start-workers.sh`
    - `./sbin/stop-workers.sh`

---
- 执行方式
    1. 直接编写代码即时运行:`./sbin/spark-shell --help`
    2. 将代码打包提交到集群:`./sbin/spark-submit --help`


---
## Standalone部署代码提交发布模式：


## Spark执行
1. client模式
```sh
# 使用client模式执行
${SPARK_HOME}/bin/spark-submit \
--master spark://cent01:7077 \
# --deploy-mode client \
--class org.apache.spark.examples.SparkPi \
${SPARK_HOME}/examples/jars/spark-examples_2.12-3.0.3.jar \
10
```

2. cluster模式
```sh
${SPARK_HOME}/bin/spark-submit \
--master spark://cent01:7077 \
--deploy-mode cluster \
--class org.apache.spark.examples.SparkPi \
${SPARK_HOME}/examples/jars/spark-examples_2.12-3.0.3.jar \
10
```