
# dockerfile



- 基于DSL语法


---
## 构建
```sh
ls dockerfile
docker build -t  .


# 指定dockerfile
docker build -t image_name:image_tag -f dockerfile2 .

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


- `CMD`和`ENTRYPOINT`可以在`dockerfile`文件中存在多条，但只有最后一条才会有效执行，即覆盖现象
- 如果`CMD`和`ENTRYPOINT`在同一`dockerfile`文件存在，会出现相互覆盖现象

- `docker run`会覆盖`CMD`

```sh
# FLAG = CMD or ENTRYPOINT
FLAG ["ls", "-la"]
FLAG ls -la

```

- exec模式：`CMD ["executable", "param1", "param2"]`
    - executable进程pid=1
- shell模式：`CMD command param1 param2`
    - sh进程pid=1

- `CMD`为`ENTRYPOINT`提供参数：`CMD ["param1", "param2"]`


```sh

CMD ["nohup", "sh", "-c", " & "]

# 注意此处使用双引号
RUN chmod +x entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
```

- entrypoint.sh
```sh
#!/bin/bash
python manage.py runserver --noreload 0.0.0.0:8000 &
# docker容器启动多个服务，最后一个服务不用设置后台启动，否则容器启动就直接退出了
celery -A celery_project worker -l info -P threads -E
```