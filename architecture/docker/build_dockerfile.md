
# dockerfile



- 基于DSL语法


---
## 构建
```sh
ls Dockerfile
docker build -t image_name:image_tag .
```

## 命令

- `FROM`：基于什么镜像
- `MAINTAINER`：维护人员信息：姓名，邮箱
- `WORKDIR`：切换目录
- `COPY`：将宿主机的文件拷贝到镜像中去
- `ADD`：压缩包解压
```sh

ADD src dest
```


- `ENV`：设置环境变量

- `VOLUME`：路径
- `EXPOSE`：指定对外开放端口
- `USER`：指定用户，默认root用户

```sh

EXPOSE
```

- `RUN`：运行命令
- `CMD`：指定镜像启动时运行的脚本
- `ENTRYPOINT`：指定镜像启动时运行的脚本


---


- `CMD`和`ENTRYPOINT`可以在`Dockerfile`文件中存在多条，但只有最后一条才会有效执行，即覆盖现象
- 如果`CMD`和`ENTRYPOINT`在同一`Dockerfile`文件存在，会出现相互覆盖现象

```sh
# FLAG = CMD or ENTRYPOINT
FLAG ["ls", "-la"]
FLAG ls -la

```