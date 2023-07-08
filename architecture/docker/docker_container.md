



---

## Docker容器

```sh

# 显示容器
docker ps
docker ps -a = docker container ls -a
# 不带-a｜--all只显示正在运行的容器



# 容器重命名
docker rename old_name new_name


# 删除已停止的容器
docker rm container_id = docker container rm container_id
# 删除正运行的容器
docker rm -f container_id




# 保存容器
docker save -o container.tar container_id
# 加载容器
docker load --input container.tar

# 导出镜像
docker export -o image.tar
# 导入镜像
docker import file.tar



# 启动容器
docker start container_id
# 关闭容器
docker stop container_id
# 强制终止容器
docker kill container_id

# 显示容器内部信息
docker inspect container_id

# 显示容器进程信息
docker top container_id

```
---



---

```sh

# 根据镜像创建容器
docker create --name container_name image_name:image_tag
# 根据容器生成镜像
docker commit -a=image_author -m=commit_message container_id image_name:image_tag

```
