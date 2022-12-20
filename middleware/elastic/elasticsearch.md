# ElasticSearch
> ES


- 存储
- 索引


tar -zxvf elasticsearch-7.3.0-linux-x86_64.tar.gz
cd elasticsearch-7.3.0

```sh
./bin/elasticsearch
```


- config/elasticsearch.yml
```yml
node.name: node-1
network.host: 0.0.0.0
```

- config/jvm.options
```
-Xms1g
-Xmx1g
```
---

1. can not run elasticsearch as root

useradd -s /bin/bash -d /home/chench chench
mv elasticsearch-7.3.0 /home/chench
cd /home/chench
chown -r chench:chench elasticsearch-7.3.0

2. the default discovery settings are unsuitable for production use;

at least one of [discovery.seed_hosts, discovery.seed_providers,
cluster.initial_master_nodes] must be configured

vim ./config/elasticsearch.yml
```yml
cluster.initial_master_nodes: ["node-1"]
```

3. max file descriptors [4096] for elasticsearch process is too low, increase to at least [65536]

ulimit -Hn
ulimit -Sn

vim /etc/security/limits.conf
```conf
*               soft    nofile          65536
*               hard    nofile          65536
```

4. max number of threads [3818] for user [es] is too low, increase to at least [4096]

ulimit -Hu
ulimit -Su

vim /etc/security/limits.conf
```conf
*               soft    nproc           4096
*               hard    nproc           4096
```

5. max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144]

vim /etc/sysctl.conf
```conf
vm.max_map_count=262144
```
sysctl -p

---

- elasticsearch 7.3.0要求jdk11  启动时报警告
Java HotSpot(TM) 64-Bit Server VM warning: Option UseConcMarkSweepGC was deprecated in version 9.0 and will likely be removed in a future release.

config/jvm.options
```
-XX:+UseConcMarkSweepGC 改为 -XX:+UseG1GC
```
---

curl http://localhost:9200/?pretty
chrome:http://ip:9200/?pretty


---


## centos 6 elasticsearch 5.6.16

java.lang.UnsupportedOperationException: seccomp unavailable: CONFIG_SECCOMP not compiled into kernel, CONFIG_SECCOMP and CONFIG_SECCOMP_FILTER are needed

Centos6不支持SecComp,而ES默认bootstrap.system_call_filter为true进行检测

- config/elasticsearch.yml
```yml
bootstrap.memory_lock: false
bootstrap.system_call_filter: false
```