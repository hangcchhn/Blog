# Docker Machine

- 基于Go语言实现
- 提供各个平台安装Docker
---
## 驱动
> 支持多种驱动

- amazonec2
- azure
- digitalocean
- exoscale
- generic
- google
- hyperv
- none
- openstack
- rackspace
- softlayer
- virtualbox
- vmwarevcloudair
- vmwarefusion
- vmwarevsphere

```sh

docker-machine help

docker-machine create --driver virtualbox machine_name

docker-machine ls

docker-machine env machine_name
docker-machine ssh machine_name

```
---
- 首先创建一个虚拟机，并在其上创建一个Docker Host
- 然后使用Docker Client与Docker Host通信
- 最后在Docker Host上创建和启动容器