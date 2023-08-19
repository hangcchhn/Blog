# supervisor

- Python语言开发的Unix/Linux系统进程管理工具




- 配置文件：/etc/supervisor/supervisor.conf
```conf

[unix_http_server]


[inet_http_server]


[supervisord]


[supervisorctl]

[include]
files = /etc/supervisor/conf.d/*.conf

```

- /etc/supervisord.d/



```sh
# CentOS
yum install supervisor
# Ubuntu
apt install supervisor

# Python
pip install supervisor

```

---
- 命令：supervisorctl
```sh

supervisorctl --help


```