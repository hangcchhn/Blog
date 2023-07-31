# Docker用例

---

## Redis
```sh
docker pull redis

docker run --name redis-start -p 6379:6379 -d redis
# 指定密码
--requirepass chench

```
- dockerfile
```dockerfile
FROM redis
COPY redis.conf /usr/local/etc/redis/redis.conf
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]

```

- docker-compose.yml
```yaml


```

---

## Nginx

```sh
docker pull nginx

docker run --name nginx -p 80:80 -d nginx

```

---

## MySQL

```sh
# 设置root密码
-e MYSQL_ROOT_PASSWORD=chench
# 创建数据库
-e MYSQL_DATABASE=test

```


---

## Jenkins

```sh

docker run -d -p 9095:8080 -p 50000:50000 --name jenkins -v /home/jenkins_home:/var/jenkins_home -v /etc/localtime:/etc/localtime jenkins/jenkins


```


---
## 运行镜像举例说明


```sh
docker run -it centos:7 /bin/bash

docker run -it ubuntu:20.04 /bin/bash

docker run --name theia -it -p 3000:3000 -v "$(pwd):/home/project:cached" theiaide/theia:1.5.0

docker run --name theia -it -p 3000:3000 -v "$(pwd):/home/project:cached" theiaide/theia-java:1.5.0

docker run --name theide --security-opt seccomp=unconfined -e GO111MODULE=auto --rm -d   -p 3000:3000/tcp -v "$(pwd):/home/project:cached" theiaide/theia-full:1.5.0

docker run --name cheide -it --rm -v /var/run/docker.sock:/var/run/docker.sock -v /root/cheide:/data eclipse/che start
```


---