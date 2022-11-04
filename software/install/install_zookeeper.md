# Install Zookeeper


## 单机模式
> standalone

```sh

cd /usr/zookeeper/zookeeper3.4.14/
cp conf/zoo_sample.cfg conf/zoo.cfg

```
- conf/zoo.cfg
```conf
# The number of milliseconds of each tick
tickTime=2000
# The number of ticks that the initial
# synchronization phase can take
initLimit=10
# The number of ticks that can pass between
# sending a request and getting an acknowledgement
syncLimit=5
# the directory where the snapshot is stored.
dataDir=/tmp/zookeeper
# the port at which the clients will connect
clientPort=2181
```

- bin/zkServer.sh
```sh
bin/zkServer.sh
Usage: bin/zkServer.sh {start|start-foreground|stop|restart|status|upgrade|print-cmd}

bin/zkServer.sh start
Starting zookeeper ... STARTED

bin/zkServer.sh status
Mode: standalone

bin/zkServer.sh stop
Stopping zookeeper ... STOPPED

```




## 集群部署

```sh

cp -f /usr/zookeeper/ /usr/zookeeper/zookeeper1/

vim /usr/zookeeper/zookeeper1/conf/zoo.cfg

# The number of milliseconds of each tick
tickTime=2000
# The number of ticks that the initial
# synchronization phase can take
initLimit=10
# The number of ticks that can pass between
# sending a request and getting an acknowledgement
syncLimit=5
# the directory where the snapshot is stored.
dataDir=/tmp/zookeeper/zookeeper1
# the port at which the clients will connect
clientPort=2111
# server.x
server.1=127.0.0.1:2121:2131
server.2=127.0.0.1:2122:2132
server.3=127.0.0.1:2123:2133


ehco 1 > /tmp/zookeeper/zookeeper1/myid

/usr/zookeeper/zookeeper1/bin/zkServer.sh start

/usr/zookeeper/zookeeper1/bin/zkServer.sh status

```





