

# spark install

## 单机模式

- java 1.8.0_202
- hadoop 2.7.7
- scala 2.11.12
- spark 2.4.8
    - spark-2.4.8-bin-without-hadoop.tgz
    - 先安装好hadoop单机模式


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

./bin/spark-shell --master spark://192.168.10.169:7077
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
