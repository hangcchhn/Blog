nginx http

---
## http


```nginx

http {

    #主模块指令，实现对配置文件所包含的文件的设定，可以减少主配置文件的复杂度
    include       mime.types;

    #核心模块指令，默认设置为二进制流，也就是当文件类型未定义时使用这种方式
    default_type  application/octet-stream;

    #下面代码为日志格式的设定，main为日志格式的名称，可自行设置，后面引用
	log_format  main  '$remote_addr - $remote_user [$time_local] "$request" '
	                  '$status $body_bytes_sent "$http_referer" '
	                  '"$http_user_agent" "$http_x_forwarded_for"';
	#引用日志main格式
	access_log  logs/access.log  main;

    #设置允许客户端请求的最大的单个文件字节数
    client_max_body_size 20M;
    #指定来自客户端请求头的headebuffer大小
    client_header_buffer_size  32k;
    #指定连接请求试图写入缓存文件的目录路径
    client_body_temp_path /dev/shm/client_body_temp;
    #指定客户端请求中较大的消息头的缓存最大数量和大小，目前设置为4个32KB
    large client_header_buffers 4 32k;

    #开启高效文件传输模式
    sendfile        on;
    #开启防止网络阻塞
    tcp_nopush     on;
    #开启防止网络阻塞
    tcp_nodelay    on;

    #设置客户端连接保存活动的超时时间
    #keepalive_timeout  0; # 无限时间
    keepalive_timeout  65;

    #设置客户端请求读取header超时时间
    client_header_timeout 10;
    #设置客户端请求body读取超时时间
    client_body_timeout 10;

    #HttpGZip模块配置
    #开启gzip压缩
    gzip  on;
    #设置允许压缩的页面最小字节数
    gzip_min_length 1k;
    #申请4个单位为16K的内存作为压缩结果流缓存
    gzip_buffers 4 16k;
    #设置识别http协议的版本，默认为1.1
    gzip_http_version 1.1;
    #指定gzip压缩比，1-9数字越小，压缩比越小，速度越快
    gzip_comp_level 2;
    #指定压缩的类型
    gzip_types text/plain application/x-javascript text/css application/xml;
    #让前端的缓存服务器进过gzip压缩的页面
    gzip_vary on;



}

```



---
- upstream
```nginx

http {

    upstream services{
        server localhost:8888;
        server localhost:9999;
    }

    server {
        listen 8899;
        server_name localhost;

        location / {
            proxy_pass http://services/;
            proxy_redirect off;
            proxy_set_header Host $http_host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        }

    }

}

```
