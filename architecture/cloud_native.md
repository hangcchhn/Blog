# 云原生
> Cloud Native
- 云原生计算基金会(Cloud Native Computing Foundation, CNCF)
- 云原生Cloud Native Landscape
---
- 开发和运维:DevOps(Development Operations)

- 微服务(Microservice)
- 无服务(Serverless)
- 服务网格(Service Mesh)
    - Istio

- 容器Container
    - Docker
- 容器镜像库
    - Harbor
- 服务编排
    - Kubernetes
- 监控
    - Prometheus



- Helm


- 持续集成和持续交付:CI(Continuous Integration)/CD(Continuous Delivery)
    - Jenkins
---
## Kubernetes
> k8s

- 最小部署单元:Pod
    - 一个Pod由一个或多个Container组成
    - 一个Pod的所有Container共享存储和网络
    - 一个Pod的所有Container运行在同一个docker上


### Master

- Scheduler
- API Server
- Controller Manager
- etcd



### Node
- kubelet
- kube-proxy
- Docker Engine

---
- Docker容器
- Etcd:存储
- Flannel:网络

---
### kubeadm
> 快速搭建Kubernetes集群
- kubeadm init
- kubeadm join
---
### minikube
> 轻量化的Kubernetes集群

---





---
- Cloud
    - IaaS
    - PaaS
    - SaaS


---

### Helm
> Kubernetes的包管理器


---

## kubectl命令


---
### 监控
- 日志log
- trace:调用链路追踪
- metric:多维度度量


---

- 声明式API
    - Deployment(无状态应用)
    - StatefulSet(有状态应用)
    - Job(任务类应用)

---

- 负载均衡服务:Loadbalance Service
- 容器运行时接口:CRI(Container Runtime Interface)
- 容器网络接口:CNI(Container Network Interface)
- 容器存储接口:CSI(Container Storage Interface)