# FastDFS Install


## 介绍

### 介绍
- 一个纯C语言开发的，开源的，轻量级的，高性能的分布式文件系统。
- 支持文件存储、文件同步、文件访问、横向组拓展，同步热备份。
- 解决了高容量的问题，大多用于照片和视频等文件共享站点存储。
- 解决了负载均衡的问题，支持nginx程序添加fastdfs模块编译。


### 组成
fastdfs服务端：跟踪器（tracker）和存储节点（storage）。
- tracker负责文件访问的调度和负载均衡，可以多个。
- storage负责文件的存储，同步和访问等，可以多个。
FastDFS客户端：
- test/upload/download/delete
- java/c/php


## 安装

> centos:yum install gcc make perl  


```sh
tar -zxvf libfastcommon-1.0.36.tar.gz
cd ./libfastcommon-1.0.36
./make.sh
./make.sh install

tar -zxvf fastdfs-5.11.tar.gz
cd ./fastdfs-5.11
./make.sh
./make.sh install

```


## 配置

### tracker
> /usr/bin/fdfs_trackerd /etc/fdfs/tracker.conf start|stop|restart


```conf
tracker.conf:
# fdfs_trackerd
port=22122
# data&logs
base_path=/root/fdfs/fastdfs/storage

# the method of selecting group to upload files
# 0: round robin
# 1: specify group
# 2: load balance, select the max free space group to upload file
store_lookup=0


# which group to upload file
# when store_lookup set to 1, must set store_group to the group name
store_group=

# which storage server to upload file
# 0: round robin (default)
# 1: the first server order by ip address
# 2: the first server order by priority (the minimal)
store_server=0

# which path(means disk or mount point) of the storage server to upload file
# 0: round robin
# 2: load balance, select the max free space path to upload file
store_path=0

# which storage server to download file
# 0: round robin (default)
# 1: the source storage server which the current file uploaded to
download_server=0

```

### storage
> /usr/bin/fdfs_storaged /etc/fdfs/storage.conf start|stop|restart
1. storage配置文件storage.conf中前缀group_的配置项是用于分组的
2. storage配置文件storage.conf中前缀store_的配置项是用于存储的


```conf
storage.conf:

# fdfs_trackerd
tracker_server=192.168.10.153:22122

# nginx_fastdfs
http.server_port=8998

# fdfs_storaged
port=23000

# data&logs
base_path=/root/fastdfs/storage1

# store_pathN:store_path_count=N 
store_path_count=1
store_path0=/root/fdfs/fastdfs/storage

# group_name
group_name=group0
```




#### storage的七种状态
> fdfs_monitor /etc/fdfs/storage.conf
1. FDFS_STORAGE_STATUS：INIT      :初始化，尚未得到同步已有数据的源服务器
2. FDFS_STORAGE_STATUS：WAIT_SYNC :等待同步，已得到同步已有数据的源服务器
3. FDFS_STORAGE_STATUS：SYNCING   :同步中
4. FDFS_STORAGE_STATUS：DELETED   :已删除，该服务器从本组中摘除
5. FDFS_STORAGE_STATUS：OFFLINE   :离线
6. FDFS_STORAGE_STATUS：ONLINE    :在线，尚不能提供服务
7. FDFS_STORAGE_STATUS：ACTIVE    :在线，可以提供服务









