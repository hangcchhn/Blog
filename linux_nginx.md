# CentOS Nginx

## 下载安装

### 下载源码
http://nginx.org/download/
`nginx-1.14.2.tar.gz`

### 安装依赖
- `yum install -y pcre pcre-devel`
- `yum install -y zlib zlib-devel`
- `yum install -y openssl openssl-devel`

### 源码编译
```
tar -zxvf nginx-1.14.2.tar.gz

cd nginx-1.14.2/src

make
```
### 安装运行



```
./configure --prefix=/chench/nginx-1.14.2 \
--user=nginx --group=nginx \
--with-pcre=/chench/pcre-8.42 \
--with-zlib=/chench/zlib-1.2.11 \ 
--with-openssl=/chench/openssl- \
--with-http_ssl_module \
--with-stream 


./configure --prefix=/usr/nginx --with-http_ssl_module --with-stream
```



```
./configure --prefix=/usr/local/nginx/nginx-1.14.2
make && make install
make install

cd /usr/local/nginx/nginx-1.14.2

./sbin/nginx -t ./conf/nginx.conf 检查配置文件合法
./sbin/nginx -c ./conf/nginx.conf 加载配置文件启动


nginx -s stop 快速终止
nginx -s quit 优雅退出
nginx -s reopen 重启
nginx -s reload 重载

nginx -p /usr/local/nginx/nginx-1.14.2

```

./nginx -V
转发tcp协议：--with-stream
转发https协议：--with-http_ssl_module


