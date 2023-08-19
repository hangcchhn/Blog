# supervisor

- Python语言开发的Unix/Linux系统进程管理工具



```sh
# CentOS
yum install supervisor
# Ubuntu
apt install supervisor

# Python
pip install supervisor

```


- 配置文件：/etc/supervisor/supervisor.conf
```conf

[unix_http_server]


[inet_http_server]
port = 0.0.0.0:9001
username = supervisor
password = supervisor

[supervisord]


[supervisorctl]

[include]
files = /etc/supervisor/conf.d/*.conf

```

- /etc/supervisord.d/http-server.conf

```sh
[program:http-server]
directory = /tmp/http-server
command = python -m http.server
priority = 1
numprocs = 1
autostart = true
autorestart = true
startretries = 3
startsecs = 3
stderr_logfile = /tmp/http-server/stderr.log
stdout_logfile = /tmp/http-server/stdout.log

```

---
- 命令：supervisorctl
```sh

supervisorctl --help

supervisorctl --interactive
supervisor> help

supervisorctl update


```

- 区分supervisord和process


