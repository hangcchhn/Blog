# Service


- /usr/lib/systemd/system/
- /etc/lib/systemd/user/
- /etc/systemd/system/


---
- .service
    - [Unit]
        -
    - [Service]
        - Type:simple,forking,notify,oneshot,exec,dbus,idle
    - [Install]
```ini
[Unit]
Description=nginx
Documentation=
Before=
After=network.target
Wants=
Requires=

[Service]
Type=forking

ExecStart=
ExecReload=
ExecStop=

PrivateTmp=true # 是否分配独立空间

[Install]
WantedBy=multi-user.target # 多用户命令行

```
---
## CentOS 6.x
> Ubuntu

- service
- chkconfig

```sh

# 服务状态|开启|停止|重启
service ****** status|start|stop|restart

# 服务开机启用|禁用
chkconfig ****** on|off

chkconfig --list
```
---

## CentOS 7.x
- systemctl

```sh
# 服务状态|开启|停止|重启
systemctl status|start|stop|restart ******|******.service

# 服务开机启用|禁用
systemctl enable|disable ******|******.service



systemctl list-unit-files
systemctl list-units

```