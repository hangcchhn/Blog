# Docker镜像


```sh


# 显示镜像
docker images
docker images -a = dokcer image ls -a
# 带-a｜--all会显示中间过程的镜像



# dangling image REPOSITORY<none> TAG<none>
docker image prune

# 搜索镜像
docker search image_name

# 拉取镜像
docker pull image_name:tag_name



# 查询镜像内部信息
docker image inpect image_id
# 查看镜像构建历史
docker image history image_id



docker tag image_name:image_tag repository_host:repository_port/repository_path

docker push image_repo/image_name:image_tag

docker login repository_host:repository_port
--username=
--password=


```

---


## Docker Hub


- alpine

- slim
    - buildpack-deps
- debain
    - buster



- bitnami
    - vmware
- rapidfort


---
## 删除镜像

```sh


# 删除无引用的镜像（镜像引用和容器引用）（默认删除中间过程镜像）
docker rmi image_id = docker image rm image_id

# 不删除该镜像的中间过程镜像
docker rmi –-no-prune image_id


# 1.还有已停止的容器使用该镜像
# image is being used by stopped container container_id
docker ps -a
docker rm container_id
docker rmi image_id

# 2.强制删除镜像（不会删除使用该镜像的容器）
docker rmi -f|--force image_id


# 3.有多个仓库指向该镜像
# image is referenced in multiple repositories
docker images -a
docker rmi repository_1
docker rmi repository_2

# 强制删除镜像（删除多个仓库）
docker rmi -f|--force image_id


# 4.还有其他镜像依赖该镜像（该镜像是其他镜像的中间过程镜像）
# image has dependent child images
docker image history image_id


```
