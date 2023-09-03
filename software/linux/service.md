# Service


- /usr/lib/systemd/system/
- /etc/lib/systemd/user/
- /etc/systemd/system/
- /etc/systemd/system/multi-user.target.wants/

---
- .service
```ini
[Unit]
Description=nginx
Documentation=
Before=
After=network.target
Wants=
Requires=

[Service]
# simple,forking,notify,oneshot,exec,dbus,idle
Type=forking

ExecStart=
ExecReload=
ExecStop=

PrivateTmp=true # 是否分配独立空间

[Install]
WantedBy=multi-user.target # 多用户命令行

```
## service

```sh

# 服务状态|开启|停止|重启
service ****** status|start|stop|restart

service --status-all
```
## chkconfig
```sh

apt install chkconfig
yum install chkconfig

# 服务开机启用|禁用
chkconfig ****** on|off

chkconfig --list
```

- sysv-rc-conf
```sh

# Ubuntu 16.04使用sysv-rc-conf替代chkconfig
apt install sysv-rc-conf
cp /usr/sbin/sysv-rc-conf /usr/sbin/chkconfig
```


## systemctl

```sh
# 服务状态|开启|停止|重启
systemctl status|start|stop|restart ******|******.service

# 服务开机启用|禁用
systemctl enable|disable ******|******.service



systemctl list-unit-files
systemctl list-units

systemctl daemon-reload

```

