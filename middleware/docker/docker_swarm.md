# Docker Swarm

- 使用标准的Docker API
- 提供 Docker 容器集群服务

- Swarm守护进程:调度器(scheduler)+路由器(router)


---

在Docker 1.12中，Docker Swarm已内嵌入Docker Engine
- 容器编排
- 集群管理

```sh

docker swarm help

docker-machine create -d virtualbox hostname

# 初始化Swarm集群，多网卡指定IP
docker swarm init --advertise-addr 192.168.10.180

```

---
## Swarm集群

- 节点(node)是Swarm集群的最小资源单位，每个节点是一台Docker主机，节点分管理节点和工作节点，管理节点默认也是工作节点。
    - 管理(manager)节点负责响应外部对集群的操作请求，并维护集群中的资源，监控集群状态，分发任务给工作节点。
    - 工作(worker)节点负责执行管理节点安排的具体任务，每个工作节点上运行代理(agent)来汇报任务完成情况。
- Swarm集群采用典型的主从架构，通过发现服务来选举中心(leader)管理节点，各个节点上运行代理(agent)接受中心管理节点的统一管理，集群会自动通过Raft协议分布式选举出中心(leader)管理节点，无须额外的发现服务支持，避免了单点故障的瓶颈问题，同时也内置了DNS的负载均衡和对外部负载均衡机制的集成支持。
- Swarm集群的配置和状态信息保存在一套位于所有管理节点上的分布式etcd数据库（运行于内存中）中。

```sh
docker node help
docker node ls

```

- 任务(task)是Swarm集群中最小的调度单位，当用户通过创建或更新服务(service)声明一个期望状态的服务时，调度器通过调度任务来实现期望的状态。
- 任务是一个单向机制，单向地执行一个系统状态，容器是任务的实例化，调度器会创建一个新的任务来生成一个新容器。
---
- 服务(service)是指一组任务的集合，服务分两种模式
    - replicated模式:按照一定规则在各个工作节点上运行指定个数的任务。
    - global模式:每个工作节点上运行一个任务。

```sh
docker service help
docker service ls
docker service create --mode xxx



```