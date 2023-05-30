# web.py

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


- 需要fastcgi和rewrite模块：版本要求nginx>=0.8.4，编译安装nginx 1.6.3

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
```sh
/usr/local/nginx/nginx-1.6.3/sbin/nginx -c /usr/local/nginx/nginx-1.6.3/conf/nginx.conf
/usr/local/nginx/nginx-1.6.3/sbin/nginx -t
/usr/local/nginx/nginx-1.6.3/sbin/nginx -s reload

curl http://127.0.0.1:8088/webpy

```

