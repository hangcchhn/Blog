# web.py

---
## web.py
> simple(简单) powerful(强大)

### python
- python2:
    - pip2 install web.py==0.51
- python3
    - pip3 install web.py



### os
- linux
    - centos 6.10
    - python 2.7.14
- windows
    - windows xp
    - python 2.7.18

---
## flup

python2中使用flup最新版本1.0.3会出现no module name _dummy_thread错误
- flup==1.0.2只支持的是python2:`pip2 install flup==1.0.2`
- flup==1.0.3只支持的是python3:`pip3 install flup==1.0.3`



---
## spawn-fcgi


- 配置编译安装spawn-fcgi 1.6.3
```shell
./configure
make & make install
```

- webpy.py
```py
#!/usr/bin/env python2
# —*— coding: utf-8 -*-
import web

# code
urls = ()

if __name__ == "__main__":
    app = web.application(urls, globals())
    app.run()
    pass
```

- spawn-fcgi命令

```shell

# 关闭命令，可关闭多进程应用
kill -9 `pgrep -f "python2 /root/webpy/python/webpy.py"`

# 启动命令

# 使用默认的主机(0.0.0.0)和端口(8080)启动
spawn-fcgi -d /root/webpy/python -f /root/webpy/python/webpy.py

# 使用配置的主机(-a)和端口(-p)启动
spawn-fcgi -d /root/webpy/python -f /root/webpy/python/webpy.py -a 127.0.0.1 -p 9002
# 配置pid文件路径和进程数量
spawn-fcgi -d /root/webpy/python -f /root/webpy/python/webpy.py -P /root/webpy/python/webpy.pid -F 5


# 测试发现默认的和配置的主机和端口都被监听了

netstat -alp |grep python2
tcp        0      0 0.0.0.0:8080                0.0.0.0:*                   LISTEN      6350/python2
tcp        0      0 127.0.0.1:9002              0.0.0.0:*                   LISTEN      6350/python2


curl http://127.0.0.1:9002/
curl http://192.168.10.153:8080/

```



### 启动失败处理记录

- spawn-fcgi: 没有那个文件或目录
```shell
vim webpy.py
:set fileformat
:set fileformat=unix
```

- spawn-fcgi: child exited with: 127
```shell
ldd /root/webpy/python

ldconfig
```

- spawn-fcgi: child exited with: 126
```shell
# 给文件分配执行权限
chmod +x webpy.py
```

- spawn-fcgi: child exited with: 2
```shell
# 文件首行加上下面这行，指定对应版本的编译器
#! /usr/bin/env python2
```

- spawn-fcgi: child exited with: 1
```shell
# 启动程序出现未知错误，查看程序运行终端日志
# spawn-fcgi使用-n参数设置启动查看终端日志
# 使用-n参数配置的主机(-a)和端口(-p)都无效
# 使用默认的主机(0.0.0.0)和端口(8080)启动
只使用spawn-fcgi指定地址和端口无效，配合nginx使用可以指定地址和端口
spawn-fcgi -d /root/webpy/python -f /root/webpy/python/webpy.py -a 127.0.0.1 -p 9002 -n
http://0.0.0.0:8080/

curl http://127.0.0.1:8080/

```



---
## fastcgi

### 使用spawn-fcgi启动

- webpy.py
```py
#!/usr/bin/env python2
# —*— coding: utf-8 -*-
import web

# code
urls = ()

if __name__ == "__main__":
    app = web.application(urls, globals())
    # 只有在Linux系统才使用fcgi或fastcgi启动web.py
    if 'Linux' == platform.system():
        web.wsgi.runwsgi = lambda func, addr=None: web.wsgi.runfcgi(func, addr)
        pass
    app.run()
    pass
```
```shell

spawn-fcgi -d /root/webpy/python -f /root/webpy/python/webpy.py -a 127.0.0.1 -p 9002

netstat -anlp |grep 9002

telnet 127.0.0.1 9002

Crtl + ]

quit
```

### 使用nginx转发


需求包含fastcgi和rewrite模块：版本要求nginx>=0.8.4


- 配置编译安装nginx 1.6.3
```shell
./configure --prefix=/usr/local/nginx/nginx-1.6.3
make & make install
```

- nginx.conf
```conf
http {
    server {
        listen       8088;
        server_name  localhost;

        location / {
            # 使用fastcgi
            include fastcgi_params;
            fastcgi_param SCRIPT_FILENAME $fastcgi_script_name;
            fastcgi_param PATH_INFO $fastcgi_script_name;
            fastcgi_pass 127.0.0.1:9002;
        }

        location /static/ {
            if (-f $request_filename) {
            rewrite ^/static/(.*)$  /static/$1 break;
            }
        }
    }
}
```
```
/usr/local/nginx/nginx-1.6.3/sbin/nginx -c /usr/local/nginx/nginx-1.6.3/conf/nginx.conf
/usr/local/nginx/nginx-1.6.3/sbin/nginx -t
/usr/local/nginx/nginx-1.6.3/sbin/nginx -s reload

curl http://127.0.0.1:8088/webpy

```
