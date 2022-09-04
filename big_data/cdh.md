# CDH
>


docker
```sh

docker pull cloudera/quickstart:latest


docker run --hostname=quickstart.cloudera --privileged=true -t -i [OPTIONS] [IMAGE] /usr/bin/docker-quickstart


docker run --hostname=quickstart.cloudera --privileged=true -t -i \
-p 8888:8888 -p 8020:8020 -p 8022:8022 -p 7180:7180 -p 21050:21050 -p 50070:50070 -p 50075:50075 -p 50010:50010 -p 50020:50020 -p 8890:8890 -p 60010:60010 -p 10002:10002 -p 25010:25010 -p 25020:25020 -p 18088:18088 -p 8088:8088 -p 19888:19888 -p 7187:7187 -p 11000:11000 \
--name cdh cloudera/quickstart:latest /usr/bin/docker-quickstart





/home/cloudera/cloudera-manager --express
WARNING: It is highly recommended that you run Cloudera Express in a VM with at least 8 GB of RAM.

sudo /home/cloudera/cloudera-manager --force --express


# 时间同步
service ntpd start




```
username:cloudera
password:cloudera

- http://ip:8888


- http://ip:7180

---
| 组件 | 端口号 | 端口用途 |
| :-: | :-: | :-: |
| Cloudera Management Service | 8087 | Activity Monitor Web UI 端口 |
| Cloudera Management Service | 9999 | Activity Monitor 侦听端口 |
| Cloudera Management Service | 9998 | Activity Monitor 喷嘴端口 |
| Cloudera Management Service | 10101 | 警报：侦听端口 |
| Cloudera Management Service | 7184 | 事件发布端口 |
| Cloudera Management Service | 7185 | 事件查询端口 |
| Cloudera Management Service | 8084 | Event Server Web UI 端口 |
| Cloudera Management Service | 8091 | Host Monitor Web UI 端口 |
| Cloudera Management Service | 9995 | Host Monitor 侦听端口 |
| Cloudera Management Service | 9994 | Host Monitor 喷嘴端口 |
| Cloudera Management Service | 7186 | Navigator 审核服务器端口 |
| Cloudera Management Service | 8089 | Navigator Audit Server Web UI 端 |
| Cloudera Management Service | 7187 | Navigator Metadata Server 端口 |
| Cloudera Management Service | 5678 | Reports Manager 服务器端口 |
| Cloudera Management Service | 8083 | Reports Manager Web UI 端口 |
| Cloudera Management Service | 8086 | Service Monitor Web UI 端口 |
| Cloudera Management Service | 9997 | Service Monitor 侦听端口 |
| Cloudera Management Service | 9996 | Service Monitor 喷嘴端口 |
| zookeeper | 2181 | 客户端端口 |
| zookeeper | 3181 | 仲裁端口 |
| zookeeper | 4181 | 选举端口 |
| zookeeper | 9010 | JMX 远程端口 |
| yarn | 10020 | MapReduce JobHistory Server 端口 |
| yarn | 19888 | MapReduce JobHistory Web 应用程序 HTTP 端口 |
| yarn | 19890 | MapReduce JobHistory Web 应用程序 HTTPS 端口 (TLS/SSL) |
| yarn | 10033 | MapReduce JobHistory Server 管理接口端口 |
| yarn | 8042 | NodeManager Web 应用程序 HTTP 端口 |
| yarn | 8044 | NodeManager Web 应用程序 HTTPS 端口 (TLS/SSL) |
| yarn | 8041 | NodeManager IPC 地址 |
| yarn | 8040 | Localizer 端口 |
| yarn | 8032 | ResourceManager 地址 |
| yarn | 8030 | 调度程序地址 |
| yarn | 8031 | 资源追踪器地址 |
| yarn | 8033 | 管理地址 |
| yarn | 8088 | ResourceManager Web 应用程序 HTTP 端口 |
| yarn | 8090 | ResourceManager Web 应用程序 HTTPS 端口 (TLS/SSL) |
| Kafka | 9092 | TCP Port |
| Kafka | 9393 | JMX Port |
| Kafka | 9394 | |
| Kafka | 9093 | TLS/SSL Port |
| Kafka | 24042 | HTTP Metric Report Port |
| Hive | 9083 | Hive Metastore 服务器端口 |
| Hive | 10000 | HiveServer2 端口 |
| Hive | 10002 | HiveServer2 WebUI Port |
| Hive | 50111 | WebHCat Server 端口 |
| HDFS | 50020 | DataNode 协议端口 |
| HDFS | 50010 | DataNode 收发器端口 |
| HDFS | 50075 | DataNode HTTP Web UI 端口 |
| HDFS | 50475 | 安全 DataNode Web UI 端口 (TLS/SSL) |
| HDFS | 14000 | REST 端口 |
| HDFS | 14001 | 管理端口 |
| HDFS | 8485 | JournalNode RPC 端口 |
| HDFS | 8480 | JournalNode HTTP 端口 |
| HDFS | 8481 | 安全 JournalNode Web UI 端口 (TLS/SSL) |
| HDFS | 2049 | NFS Gateway 服务器端口 |
| HDFS | 4242 | NFS Gateway MountD 端口 |
| HDFS | 111 | 端口映射（或 Rpcbind）端口 |
| HDFS | 8020 | NameNode 端口 |
| HDFS | 8022 | NameNode 服务 RPC 端口 |
| HDFS | 50070 | NameNode Web UI 端口 |
| HDFS | 50470 | 安全 NameNode Web UI 端口 (TLS/SSL) |
| HDFS | 50090 | SecondaryNameNode Web UI 端口 |
| HDFS | 50495 | 安全 SecondaryNameNode Web UI 端口 (TLS/SSL) |
| Hbase | 20550 | HBase REST 服务器端口 |
| Hbase | 8085 | HBase REST Server Web UI 端口 |
| Hbase | 9090 | HBase Thrift 服务器端口 |
| Hbase | 9095 | HBase Thrift 服务器 Web UI 端口 |
| Hbase | 60000 | HBase Master 端口 |
| Hbase | 60010 | HBase Master Web UI 端口 |
| Hbase | 60020 | HBase Region Server 端口 |
| Hbase | 60030 | HBase Region Server Web UI 端口 |
| spark | 7337 | Spark Shuffle Service Port |
| spark | 18088 | History Server WebUI Port |
| oozie | 11000 | Oozie HTTP 端口 |
| oozie | 11001 | Oozie 管理端口 |
| oozie | 25 | Oozie 电子邮件操作 SMTP 端口 |
| Solr | 8983 | Solr HTTP 端口 |
| Solr | 8984 | Solr 管理端口 |
| Hue | 8888 | Hue HTTP端口 |