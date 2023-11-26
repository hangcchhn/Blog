# Linux克隆

## 克隆
- 虚拟机|服务器

- CentOS 6.x:
    - 由于redhat和centos的udev的管理机制，网卡变成了eth1，想要改回eth0：
```sh
rm -rf /etc/udev/rules.d/70-persistent-net.rules

vim /etc/udev/rules.d/70-persistent-net.rules
SUBSYSTEM=="net", ACTION=="add", DRIVERS=="?*", ATTR{address}=="mac_address", ATTR{type}=="1", KERNEL=="eth*", NAME="eth0"
vim /etc/sysconfig/network-scripts/ifcfg-eth0
HWADDR=mac_address

```


- CentOS 7.x:
    - 没有70-persistent-net.rules文件
    - 注意ifcfg-ens33文件中HWADDR=mac_address一致
    - 重启网络systemctl restart network.service


## 虚拟机双网卡
- VMware
- CentOS

```sh
ifconfig
eth0
lo

vim /etc/hosts
127.0.0.1   cent
::1         cent

vim /etc/sysconfig/network
cent

hostnamectl set-hostname cent

dmesg | grep eth

cat  /etc/udev/rules.d/70-persistent-net.rules

cd /etc/sysconfig/network-scripts/

cp ifcfg-eth0 ifcfg-eth1

vim ifcfg-eth1

service network restart
```


---
## 集群

- cent01:192.168.10.201
- cent02:192.168.10.202
- cent03:192.168.10.203

```sh
vim /etc/hosts
192.168.10.202    cent02
192.168.10.203    cent03

#java
export JAVA_HOME=/usr/java/jdk1.8.0_202
export JRE_HOME=$JAVA_HOME/jre
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

#scala
export SCALA_HOME=/usr/scala/scala-2.12.14
export PATH=$SCALA_HOME/bin:$PATH

#hadoop
export HADOOP_HOME=/usr/hadoop/hadoop-3.2.1
export PATH=$HADOOP_HOME/bin:$PATH

#spark
export SPARK_HOME=/usr/spark/spark-3.1.2-bin-hadoop3.2
export PATH=$SPARK_HOME/bin:$PATH

```




---
