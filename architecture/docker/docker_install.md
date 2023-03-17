

# Docker install


## 在线安装
> Linux
### CentOS

- CentOS >= 7.x

1. 仓库
```
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
wget -O /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo
curl -o /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo
sed -i -e '/mirrors.cloud.aliyuncs.com/d' -e '/mirrors.aliyuncs.com/d' /etc/yum.repos.d/CentOS-Base.repo
yum makecache

```
2. 安装

```
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
yum list docker-ce --showduplicates | sort -r
yum install docker-ce-18.06.3.ce

```
- 命令
```sh
# 加载配置
systemctl daemon-reload
#  启停
systemctl restart docker
systemctl start docker
systemctl stop docker
# 自启
systemctl enable docker
systemctl disable docker
```
---
## 离线安装
> Linux

- `https://download.docker.com/linux/static/stable/x86_64/`

```
tar -zxvf docker-20.10.21.tgz
cp -p docker/* /usr/bin
```

- /usr/lib/systemd/system/docker.service
```ini
[Unit]
Description=Docker Application Container Engine
Documentation=https://docs.docker.com

After=network-online.target firewalld.service
Wants=network-online.target

[Service]
Type=notify
ExecStart=/usr/bin/dockerd -H unix:///var/run/docker.sock -H tcp://0.0.0.0:2375
ExecReload=/bin/kill -s HUP $MAINPID
TimeoutSec=0
RestartSec=2
Restart=always


StartLimitBurst=3
StartLimitInterval=60s


LimitNOFILE=infinity
LimitNPROC=infinity
LimitCORE=infinity

TasksMax=infinity

Delegate=yes

KillMode=process

[Install]
WantedBy=multi-user.target


```

---


## Docker Desktop

### Windows

- 适用于Linux的Windows子系统
- WIN_ENT_LTSC_2021

### MacOS

