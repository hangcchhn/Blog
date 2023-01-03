
# Spark Cluster

```sh
192.168.10.201:master
192.168.10.202:worker1
192.168.10.203:worker2


cd ./conf
cp workers.template workers
vim workers
192.168.10.201
192.168.10.202
192.168.10.203
:wq

cp spark-env.sh.template spark-env.sh
vim spark-env.sh
SPARK_MASTER_HOST=192.168.10.201
SPARK_MASTER_PORT=7077

SPARK_MASTER_WEBUI_PORT=8089

SPARK_WORKER_CORES=1
SPARK_WORKER_MEMORY=1g

JAVA_HOME=/usr/java/jdk1.8.0_202

HADOOP_CONF_DIR=/usr/hadoop/hadoop-3.2.1/etc/hadoop
YARN_CONF_DIR=/usr/hadoop/hadoop-3.2.1/etc/hadoop
:wq

scp -r workers spark-env.sh root@192.168.10.202:$PWD
scp -r workers spark-env.sh root@192.168.10.203:$PWD

sbin/start-all.sh

http://192.168.10.201:8089

./bin/spark-shell --master spark://192.168.10.201:7077

http://192.168.10.201:4040

```




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


- 代码执行方式
    - 1.直接编写代码即时运行:`./sbin/spark-shell --help`
    - 2.将代码打包提交到集群:`./sbin/spark-submit --help`



- 代码提交模式：
    - 1.client模式
    ```sh
    ${SPARK_HOME}/bin/spark-submit \
    --master yarn  \
    --deploy-mode client \
    --driver-memory 512m \
    --driver-cores 1 \
    --executor-memory 512m \
    --num-executors 2 \
    --executor-cores 1 \
    --class org.apache.spark.examples.SparkPi \
    ${SPARK_HOME}/examples/jars/spark-examples_2.12-3.0.1.jar \
    10
    ```

    - 2.cluster模式
    ```sh
    ${SPARK_HOME}/bin/spark-submit \
    --master yarn \
    --deploy-mode cluster \
    --driver-memory 512m \
    --executor-memory 512m \
    --num-executors 1 \
    --class org.apache.spark.examples.SparkPi \
    ${SPARK_HOME}/examples/jars/spark-examples_2.12-3.0.1.jar \
    10
    ```