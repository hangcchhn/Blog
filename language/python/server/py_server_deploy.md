
# Python服务端部署

---
## Apache

### mod_python
- mod_python是apache中的一个模块，
- 严重依赖编译mod_python使用的python版本

---
## Nginx
- 程序nginx使用proxy_pass转发http协议
- 要求后端应用必须是高并发的http协议服务
- 在python的web框架当中只能选择tornado

### fastcgi_pass

### scgi_pass




---
## CGI
> Common Gateway Interface
- 只能用lighttpd或apache
- nginx不支持CGI协议

### scgi
> Simple Common Gateway Interface
- flup模块支持scgi协议


### FastCGI

- nginx>=0.8.4支持fastcgi协议
- python语言通过flup模块支持fastcgi协议

- 配置Apache
- 配置Lighttpd
- 配置Nginx

### spawn-fcgi
- spawn-fcgi是fastcgi进程管理程序
- spawn-fcgi来源于lighttpd后独立
- spawn-fcgi:python,perl,php

### php-fpm

- php-fpm:php


---
## WSGI
> Web Server Gateway Interface

### mod_wsgi
- mod_wsgi是Apache中的一个模块
- mod_wsgi支持WSGI协议



### uWSGI

- nginx>=0.8.4支持uwsgi协议
- python语言的uwsgi模块

- 使用c语言编写
- 使用natvie函数实现

- 特点：自带进程控制程序

- uwsgi:python,ruby,lua,go

- 配置Nginx

---
## unicorn
- unicorn是ruby语言rails框架的部署工具

### gunicorn
> Green Unicorn
- gunicorn是从unicorn项目中移植出来的
- 既支持eventlet，也支持greenlet
- 只能运行在Linux环境中，不支持windows平台

## Gevent


## Twisted Web

- Twisted Web 是一个 Twisted 自带的网络服务器，是一个成熟的、异步的、 事件驱动的网络库

```sh
twistd web --wsgi myproject.app
twistd -n web --port tcp:8080 --wsgi myproject.app
```




