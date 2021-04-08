# FastDFS


## 介绍

### 介绍
- 一个纯C语言开发的，开源的，轻量级的，高性能的分布式文件系统。
- 支持文件存储、文件同步、文件访问、横向组拓展，同步热备等。
- 解决了高容量的问题，大多用于照片和视频等文件共享站点存储。
- 解决了负载均衡的问题，支持nginx程序添加fastdfs模块编译。


### 组成
FastDFS服务端：跟踪器（tracker）和存储节点（storage）。
- tracker负责文件访问的调度和负载均衡，可以多个。
- storage负责文件的存储，同步和访问等，可以多个。
FastDFS客户端：
- test/upload/download/delete
- java/c/python/php

### 说明
1. fastdfs采用分组（group）存储。fastdfs由一个或多个group组成，所有group的容量累加就是整个fastdfs中的容量。
2. 一个group可以由一台或多台存储（store）组成，一个group的存储容量为该group下所有storage中容量最小的那个。
3. 各个group之间的文件是相互独立的，不同group的store之间不会相互通信；一个group下的所有store中的文件都是相同的，同一group内的store之间会相互连接进行文件同步。
4. 当fastdfs容量不足或即将耗尽时，只需要增加一个或多个store，并将它们配置为一个新的group，这样就可以扩大fastdfs的容量。



### 注意
1. storage只有一个group属性，但可以配置多个store路径，
2. 同一group属性的所有storage的端口必须一致。一台linux上不能有同一group属性的多个storage。
3. 当storage配置多个tracker，而其中一个tracker没有启动，可能会导致storage一直处于僵死状态，启动storage时，storage会连接tracker，如果连不上，将一直重试直到连接成功才算真正启动完成，
4. 当在fastdfs中增加storage时，已有文件的同步由系统自动完成，此该storage的状态是SYNCING，同步完成后，系统自动将该storage状态更新为ACTIVE，并提供服务。





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
2. storage配置文件storage.conf中前缀store_的配置项是用于扩容的


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


#### 新增storage节点
> 实现单tracker多storage模式

- 同一linux不同group扩容:
1. cp storage.conf storage1.conf
2. 修改port、base、store和group参数

- 不同linux统一group备份：
1. 安装libfastcommon和fastdfs程序
2. scp storage.conf user@host:path

#### storage的七种状态
> fdfs_monitor /etc/fdfs/storage.conf
1. FDFS_STORAGE_STATUS：INIT      :初始化，尚未得到同步已有数据的源服务器
2. FDFS_STORAGE_STATUS：WAIT_SYNC :等待同步，已得到同步已有数据的源服务器
3. FDFS_STORAGE_STATUS：SYNCING   :同步中
4. FDFS_STORAGE_STATUS：DELETED   :已删除，该服务器从本组中摘除
5. FDFS_STORAGE_STATUS：OFFLINE   :离线
6. FDFS_STORAGE_STATUS：ONLINE    :在线，尚不能提供服务
7. FDFS_STORAGE_STATUS：ACTIVE    :在线，可以提供服务









