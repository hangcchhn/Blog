# Docker configuration


```sh

systemctl daemon-reload
systemctl restart docker

```

---

## Docker更换国内镜像源
```sh
mkdir -p /etc/docker
vim /etc/docker/daemon.json

```

```json
{
  "registry-mirrors": ["https://8d3cvm4c.mirror.aliyuncs.com"]
}
```

- 阿里云:https://8d3cvm4c.mirror.aliyuncs.com
- 中科大:https://docker.mirrors.ustc.edu.cn


---


## Docker开启Remote API访问2375端口
```sh
systemctl stop docker

vim /usr/lib/systemd/system/docker.service
ExecStart=/usr/bin/dockerd -H unix:///var/run/docker.sock -H tcp://0.0.0.0:2375

systemctl daemon-reload
systemctl start docker
```