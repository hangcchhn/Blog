



# install spark

- 1.单机模式
- 2.伪分布式

---
- java 1.8.0_202
- hadoop 2.7.7
- scala 2.12.16
- spark 2.4.8

## 1.本地模式Local
- spark-2.4.8-bin-hadoop2.7.tgz
```sh
bin/spark-shell
scala> :help
scala> :quit

val txtFile = sc.textFile("file:///root/spark/word.txt")
val wordCount = txtFile.flatMap(_.split(" ")).map((_,1)).reduceByKey(_ + _)
wordCount.collect
```
- http://localhost:4040

---



## 2.单机模式Single
>

- java 1.8.0_202
- hadoop 2.7.7
- scala 2.11.12
- spark 2.4.8
    - spark-2.4.8-bin-without-hadoop.tgz
    - 先安装好hadoop伪分布式


- conf/slaves
```sh
192.168.10.169
```

- conf/spark-env.sh
```sh
export SPARK_MASTER_HOST=192.168.10.169
export SPARK_MASTER_PORT=7077

export SPARK_MASTER_WEBUI_PORT=8089

export SPARK_WORKER_CORES=1
export SPARK_WORKER_MEMORY=1g

export JAVA_HOME=/opt/java/jdk1.8.0_202
export HADOOP_HOME=/opt/hadoop/hadoop-2.7.7

export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export YARN_CONF_DIR=$HADOOP_HOME/etc/hadoop



# 使用without-hadoop包时，必须添加SPARK_DIST_CLASSPATH配置
export SPARK_DIST_CLASSPATH=$($HADOOP_HOME/bin/hadoop classpath)
# 动态库
export LD_LIBRARY_PATH=$HADOOP_HOME/lib/native:$LD_LIBRARY_PATH


```
- sbin/start-all.sh
- sbin/stop-all.sh

```sh
jps
Master
Worker

bin/spark-shell --master spark://192.168.10.169:7077
scala>
val txtFile = sc.textFile("hdfs://192.168.10.169:8020/word_count/word.txt")
val wordCount = txtFile.flatMap(_.split(" ")).map((_,1)).reduceByKey(_ + _)
wordCount.collect
wordCount.saveAsTextFile("hdfs://192.168.10.169:8020/word_count/count.txt")

```
- http://192.168.10.169:8089
- http://192.168.10.169:4040


- ubuntu
- java.lang.NumberFormatException: For input string: "0x100"
```sh
export TERM=xterm-color
```

---
- 3.集群模式Standalone

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