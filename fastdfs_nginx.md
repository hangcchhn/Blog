
# fastdfs_nginx
- 分布式服务器配置负载均衡

## 启动失败
### nginx添加fastdfs模块编译安装
```sh
tar -zxvf nginx-1.15.1.tar.gz
cd nginx-1.15.1
./configure --prefix=/usr/local/nginx/nginx-1.15.1 --add-module=/root/fastdfs/fastdfs-nginx-module-1.20/src/
make
make install

/usr/local/nginx/nginx-1.15.1/sbin/nginx -c /usr/local/nginx/nginx-1.15.1/conf/nginx.conf
```




### 分析nginx的error日志
> /usr/local/nginx/nginx-1.15.1/logs/error.log

1. 访问nginx首页失败，nginx启动失败：file: /root/fastdfs/fastdfs-nginx-module-1.20/src/common.c, line: 155, load conf file "/etc/fdfs/mod_fastdfs.conf" fail, ret code: 2
解决办法：cp /root/fastdfs/fastdfs-nginx-module-1.20/src/mod_fastdfs.conf /etc/fdfs/

2. 访问nginx首页失败，nginx启动失败：file: client_func.c, line: 112, conf file "/etc/fdfs/mod_fastdfs.conf", host "tracker" is invalid
解决办法：vim /etc/fdfs/mod_fastdfs.conf -> tracker_server=tracker:22122 (修改ip和port)



### 配置nginx访问图片url


1. 修改nginx配置文件
> /usr/local/nginx/nginx-1.15.1/conf/nginx.conf
```conf
server {
    listen       8998;
    server_name  localhost;

    location / {
        root   html;
        index  index.html index.htm;
    }


    location ~ /group0/M00/ {
        root /root/fdfs/fastdfs/storage/data;
        ngx_fastdfs_module;
    }


}
```
2. 上传图片文件
fdfs_test /etc/fdfs/client.conf upload /root/fdfs/fastdfs/1.jpg
3. 浏览器访问url
http://192.168.10.153:8998/group1/M00/00/55/rBABIGAJm1OADhshAAW4YJAs8jI993.jpg

## 访问失败
1. 跟tracker端口配置一样
listen       8998;
2.跟storage路径配置一样
root /root/fastdfs/storage/data; （注意加上data）


3. nginx启动成功，地址访问404：file: ../common/fdfs_global.c, line: 52, the format of filename "group1/M00/00/55/rBABIGAJm1OADhshAAW4YJAs8jI993.jpg" is invalid
解决办法：vim /etc/fdfs/mod_fastdfs.conf -> url_have_group_name = true   (false改成true)

4. nginx启动成功，地址访问400：file: /share/data/fastdfs-nginx-module/src/common.c, line: 870, file: /home/yuqing/fastdfs/data/00/55/rBABIGAJnt-AV0DeAAW4YJAs8jI525.jpg not exist
解决办法：vim /etc/fdfs/mod_fastdfs.conf -> store_path0=/root/fastdfs/storage   (跟storage路径配置一样，注意不要加上data)

重启fdfs_trackerd和fdfs_storaged两个服务
操作命令上面已有记录：先关闭再启动
图片地址就可以访问了