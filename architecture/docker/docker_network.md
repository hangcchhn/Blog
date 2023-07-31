# Docker网络
> network


- Docker在主机上虚拟一个虚拟网桥，在网卡网段内分配一个IP给容器
- 外部主机访问容器：端口映射（将容器端口映射到主机端口）

```
-p
```
---

## 网络模式

- 桥接模式`-net=bridge`
    - 默认的网络模式
    - 容器可以访问，主机可以访问，外部主机不能访问
    - 容器可以通过主机的NAT规则访问外部网络
- 主机模式`-net=host`
    - vmware虚拟机网络中的NAT模式

- 容器模式`-net=container:container_name`



- `-net=none`
    - 只有回环网卡lo，只能访问localhost(127.0.0.1)


---

```sh

docker network ls


docker network create --driver bridge bridge_network

docker network inspect bridge_network


# 容器相互访问
docker run --network bridge_network --network-alias container_host  --name container_name -it -d image_name:image_tag

docker run --link=container_id:container_link -it -d image_name:image_tag



```


---


```sh


docker pull redis:5.0.10
docker run --name redis_name --network bridge_network --network-alias redis_host -p 16379:6379 -d redis:5.0.10 --requirepass chench





```