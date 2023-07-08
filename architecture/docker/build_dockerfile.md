
# dockerfile



- 基于DSL语法


---
## 构建
```sh
ls dockerfile
docker build -t image_name:image_tag .
```

## 命令

- `FROM`：基于什么镜像
- `MAINTAINER`：维护人员邮箱
- `WORKDIR`：指定镜像运行在哪个路径下
- `COPY`：将宿主机的文件拷贝到镜像中去
- `ADD`：压缩包解压
- `RUN`：运行命令
- `ENV`：设置环境变量
- `CMD`：指定整个镜像启动运行的脚本
- `ENTRYPOINT`：
- `EXPOSE`：指定对外开放端口

