
# fastdfs_nginx
- 分布式服务器配置负载均衡

## 安装配置
### nginx添加fastdfs模块编译安装
```sh
tar -zxvf nginx-1.15.1.tar.gz
cd nginx-1.15.1
./configure --prefix=/usr/local/nginx/nginx-1.15.1 --add-module=/root/fastdfs/fastdfs-nginx-module-1.20/src/
make
make install

/usr/local/nginx/nginx-1.15.1/sbin/nginx -c /usr/local/nginx/nginx-1.15.1/conf/nginx.conf
```
### 配置nginx访问fastdfs图片

1. 修改fastdfs模块配置文件
```conf

# valid only when load_fdfs_parameters_from_tracker is true
tracker_server=192.168.10.153:22122

# the port of the local storage server
# the default value is 23000
storage_server_port=23000

# the group name of the local storage server
group_name=group0

# if the url / uri including the group name
# set to false when uri like /M00/00/00/xxx
# set to true when uri like ${group_name}/M00/00/00/xxx, such as group1/M00/xxx
# default value is false
url_have_group_name = true

# path(disk or mount point) count, default value is 1
# must same as storage.conf
store_path_count=1

# store_path#, based 0, if store_path0 not exists, it's value is base_path
# the paths must be exist
# must same as storage.conf
store_path0=/root/fdfs/fastdfs/storage
#store_path1=/home/yuqing/fastdfs1


# set the group count
# set to none zero to support multi-group on this storage server
# set to 0  for single group only
# groups settings section as [group1], [group2], ..., [groupN]
# default value is 0
# since v1.14
group_count = 0

# group settings for group #1
# since v1.14
# when support multi-group on this storage server, uncomment following section
[group0]
group_name=group0
storage_server_port=23000
store_path_count=1
store_path0=/root/fdfs/fastdfs/storage
#store_path1=/home/yuqing/fastdfs1

```
2. 修改nginx配置文件
> /usr/local/nginx/nginx-1.15.1/conf/nginx.conf
- tracker.conf:http.server_port=8998（注意不是22122）
- storage.conf:store_path0=/root/fdfs/fastdfs/storage（注意加上data）
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
3. 上传图片文件
执行：fdfs_upload_file /etc/fdfs/client.conf /root/fdfs/fastdfs/1.jpg
返回：group0/M00/00/00/wKgKqGBu8waAfad_AABMhF3BNkg740.jpg

4. 浏览器访问url
网址：http://192.168.10.153:8998/group0/M00/00/00/wKgKqGBu8waAfad_AABMhF3BNkg740.jpg


## 启动失败

> 分析nginx的error日志:/usr/local/nginx/nginx-1.15.1/logs/error.log

1. 访问nginx首页失败，nginx启动失败：file: /root/fastdfs/fastdfs-nginx-module-1.20/src/common.c, line: 155, load conf file "/etc/fdfs/mod_fastdfs.conf" fail, ret code: 2
解决办法：cp /root/fastdfs/fastdfs-nginx-module-1.20/src/mod_fastdfs.conf /etc/fdfs/

2. 访问nginx首页失败，nginx启动失败：file: client_func.c, line: 112, conf file "/etc/fdfs/mod_fastdfs.conf", host "tracker" is invalid
解决办法：vim /etc/fdfs/mod_fastdfs.conf -> tracker_server=tracker:22122 (修改ip和port)





## 访问失败



1. nginx启动成功，地址访问404：file: ../common/fdfs_global.c, line: 52, the format of filename "group1/M00/00/55/rBABIGAJm1OADhshAAW4YJAs8jI993.jpg" is invalid
解决办法：vim /etc/fdfs/mod_fastdfs.conf -> url_have_group_name = true   (false改成true)

2. nginx启动成功，地址访问400：file: /share/data/fastdfs-nginx-module/src/common.c, line: 870, file: /home/yuqing/fastdfs/data/00/55/rBABIGAJnt-AV0DeAAW4YJAs8jI525.jpg not exist
解决办法：vim /etc/fdfs/mod_fastdfs.conf -> store_path0=/root/fdfs/fastdfs/storage   (跟storage路径配置一样，注意不要加上data)

重启fdfs_trackerd和fdfs_storaged两个服务,图片地址就可以访问了


## 多组配置
> 一台linux部署一个tracker和多个不同group属性的storage
