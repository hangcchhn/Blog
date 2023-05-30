# Nginx Install

## 下载安装

### 下载源码
http://nginx.org/download/
`nginx-1.14.2.tar.gz`

### 安装依赖
- `yum install -y pcre pcre-devel`
- `yum install -y zlib zlib-devel`
- `yum install -y openssl openssl-devel`

### 源码编译
```sh
tar -zxvf nginx-1.14.2.tar.gz

cd nginx-1.14.2/src

make
```
### 安装运行



```sh
./configure --prefix=/chench/nginx-1.14.2 \
--with-pcre=/chench/pcre-8.42 \
--with-zlib=/chench/zlib-1.2.11 \
--user=nginx --group=nginx

./configure --prefix=/usr/local/nginx --with-http_ssl_module --with-stream
make && make install
```



```sh
./configure --prefix=/usr/local/nginx/nginx-1.14.2
make && make install


cd /usr/local/nginx/nginx-1.14.2
nginx -p /usr/local/nginx/nginx-1.14.2

```



- debug
```sh

./configure --with-debug
make && make install
error_log logs/error.log debug;

```