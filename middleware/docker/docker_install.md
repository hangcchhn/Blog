


- `https://download.docker.com/linux/static/stable/x86_64/`

```
tar -zxvf docker-20.10.21.tgz
cp -p docker/* /usr/bin
```
---
- /etc/docker/daemon.json
```json
{
    "registry-mirrors": ["https://8d3cvm4c.mirror.aliyuncs.com"]
}

```


---
- /usr/lib/systemd/system/docker.service
```ini
[Unit]
Description=Docker Application Container Engine
Documentation=https://docs.docker.com

BindsTo=containerd.service
After=network-online.target firewalld.service
Wants=network-online.target
Requires=docker.socket

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