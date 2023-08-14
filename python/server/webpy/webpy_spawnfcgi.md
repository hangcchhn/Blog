

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
