
# Docker command




信息
docker info
版本
docker version
测试
docker run -it hello-world

---


docker update --restart=xxx container_id
no              容器退出时，不重启容器
always          无论怎么样，都重启容器
on-failure[:max_times]  设置失败最大重启容器次数，默认无限重启容器



---


文件传输
docker cp = scp
docker cp container_id:remote local
docker cp local container_id:remote


路径映射
-v "/local_path:/remote_path"
端口映射
-p local_port:remote_port




---

根据镜像创建容器
docker create --name container_name image_name:image_tag
根据容器生成镜像
docker commit -a=image_author -m=commit_message container_id image_name:image_tag




---


容器唯一标识ID
container_id = 3ae297c6c09f
container_uuid = 3ae297c6c09fae1a2b5f33b35b3889fd3d956ed45bbadd065263c2eb8419dd89

在container_name唯一时
可替代container_id使用

可执行命令行sh
command_line = /bin/bash

查看容器的控制台日志
docker logs -f -t --tail -100 container_id

docker inspect container_id

/var/lib/docker/containers/container_uuid

tail -10f container_uuid-json.log


进入已运行容器的显示屏幕：同步阻塞窗口(不建议使用)
如果容器有控制台日志，使用attach连接会阻塞
使用attach连接shell执行exit时容器会stop
退出快捷键Ctrl + P + Q，或关闭当前终端
docker attach container_id




在已运行的容器中执行命令(-it可以指导容器中执行命令)
连接已运行的容器的控制台(command_line = /bin/bash)
docker exec -it container_id command_line

根据镜像创建容器，并启动容器(-d后台运行否者前台启动)
docker run：不会执行dockerfile中的ENTRYPOINT
docker run -it -d --name container_name image_name:image_tag command_line



---

运行镜像举例说明

docker run -it centos:7 /bin/bash

docker run -it ubuntu:20.04 /bin/bash

docker run --name theia -it -p 3000:3000 -v "$(pwd):/home/project:cached" theiaide/theia:1.5.0

docker run --name theia -it -p 3000:3000 -v "$(pwd):/home/project:cached" theiaide/theia-java:1.5.0

docker run --name theide --security-opt seccomp=unconfined -e GO111MODULE=auto --rm -d   -p 3000:3000/tcp -v "$(pwd):/home/project:cached" theiaide/theia-full:1.5.0

docker run --name cheide -it --rm -v /var/run/docker.sock:/var/run/docker.sock -v /root/cheide:/data eclipse/che start


---


