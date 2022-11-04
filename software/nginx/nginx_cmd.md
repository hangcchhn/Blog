
# nginx




```sh

# 检查配置文件合法
./sbin/nginx -t ./conf/nginx.conf
# 加载配置文件启动
./sbin/nginx -c ./conf/nginx.conf

# 快速终止
nginx -s stop
# 优雅退出
nginx -s quit

# 重启
nginx -s reopen
# 重载
nginx -s reload


```





```sh
nginx version: nginx/1.18.0
Usage: nginx [-?hvVtTq] [-s signal] [-c filename] [-p prefix] [-g directives]

Options:
  -?,-h         : this help
  -v            : show version and exit
  -V            : show version and configure options then exit
  -t            : test configuration and exit
  -T            : test configuration, dump it and exit
  -q            : suppress non-error messages during configuration testing
  -s signal     : send signal to a master process: stop, quit, reopen, reload
  -p prefix     : set prefix path (default: /Users/hn/Macintosh/ccpp/nginx/)
  -c filename   : set configuration file (default: conf/nginx.conf)
  -g directives : set global directives out of configuration file

```


