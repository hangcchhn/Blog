# uwsgi

- `pip install uwsgi`
---

## uwsgi & flask

- uwsgi.ini
```ini
[uwsgi]
http=0.0.0.0:8000
# uwsgi + nginx -> socket
#socket=0.0.0.0:8000

# 项目配置
# 虚拟环境
virtualenv =/usr/python/python3.6.5/
# 项目路径
chdir=/root/flask
# 启动文件
wsgi-file=app.py
callable=app

# 配置后台运行和日志路径
# 注意在Dockerfile的ENTRYPOINT
# 使用uwsgi --ini uwsgi.ini命令
# 使用daemonize会使容器启动后退出
daemonize = /root/flask/uwsgi.log
# 进程文件路径
pidfile = /root/flask/uwsgi.pid

# 启用主进程
master=true
# 启用线程
enable-threads = true
# 服务停止后删除pid和socket
vacuum=true

# 进程
processes=2
# 线程
threads=2

# 启动用户和组
uid=root
gid=root
```

```sh

uwsgi uwsgi.ini

uwsgi --ini uwsgi.ini

uwsgi --reload uwsgi.pid
uwsgi --stop uwsgi.pid


curl http://127.0.0.1:8000/

```
---

## uwsgi & nginx

- 需要先启动uwsgi再启动nginx
- 使用nginx转发时需要修改uwsgi.ini文件使用socket配置

```nginx
location / {
        include      uwsgi_params;
        uwsgi_pass   127.0.0.1:8000;
        uwsgi_param  UWSGI_PYHOME /usr/python/python3.6.5/;
        uwsgi_param  UWSGI_CHDIR /root/flask;
        uwsgi_param  UWSGI_SCRIPT app.py:app;
        uwsgi_read_timeout 300;
        uwsgi_connect_timeout 300;
        uwsgi_send_timeout 300;
    }

```
- `curl http://127.0.0.1:80/`




---