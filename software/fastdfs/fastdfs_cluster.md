# fastdfs cluster
> 集群



## 说明
1. 一个fastdfs由一个或多个group组成。
2. 一个group由一个或多个storage组成。
3. 一个storage只有一个group属性，但可以配置多个store路径，文件只存储在其中一个store路径上。
4. 同一group属性的所有storage的端口必须一致。同一linux上不能有多个同一group属性的storage。
5. 不同group的文件是不同的， 同一group属性的所有storage中的文件都是相同的。


## 调度

1. 上传文件调度多组group:tracker.conf中的store_lookup
2. 上传文件调度多个存储路径storeN_path:tracker.conf中的store_path
2. 上传文件调度多个存储节点storage:tracker.conf中的store_server
2. 下载文件调度多个存储节点storage:tracker.conf中的download_server


## 分类
- more tracker
- more storage
- more group
- more store




### 新增tracker节点

#### 注意
- 当storage配置多个tracker，而其中一个tracker没有启动，storage启动时会连接tracker，如果连不上就会一直重连，直到连接成功才算真正启动完成。


### 新增storage节点
####  同一group
- 同一linux失败！
- 不同linux备份：（推荐）
1. 安装libfastcommon和fastdfs程序
2. scp storage.conf user@host:/etc/fastdfs/
##### 注意
- 当在group中增加storage时，已有文件的同步由系统自动完成，此该storage的状态是SYNCING，同步完成后，系统自动将该storage状态更新为ACTIVE。

####  不同group扩容
- 同一linux:
1. cp storage.conf storage1.conf，修改port、base、store和group参数
2. 一台linux多个group，一个tracker多个storage，此时group等同storage
3. 根据个人测试结果分析配置文件注意：
    -  配置文件mod_fastdfs.conf中，group_name可以配置多个使用/分隔
    - storage_server_port和storeN_path只能配置一个storage的，均配置成第一个group中的对应的storage_server_port和storeN_path
    - 如果配置多个storage_server_port使用/分隔只读取第一个，（）
    - 启动nginx成功，base_path路径下并没有日志，观察error.log日志，所有group的storage_server_port都一样的
    - 路径访问成功，暂且无法解释，保留记录，以后深究
    - 同一linux不同group不太推荐，个人测试资源有限
    - 此配置上传文件的轮询调度group，store都未生效

- 不同linux:（推荐）
1. 安装libfastcommon和fastdfs程序
2. scp storage.conf user@host:/etc/fastdfs/




### 新增store路径
#### 多个配置文件必须一一对应
- storage.conf中所有的storeN_path路径
- mod_fastdfs.conf中所有group的所有storeN_path路径
- nginx.conf中所有的location ~ /group*/M0N/中的data路径









## 扩容
### 容量：
- 一个storage的容量是该storage的所有store路径之和
- 一个group的容量是该group的所有storage中容量最小的storage的容量。
- 一个fastdfs的容量是该fastdfs的所有group的容量之和。
### 方式
- 纵向扩容：对同一group属性的所有storage新增store路径（成本高不推荐）
- 横向扩容：新增group

### 注意
- 当fastdfs容量不足或即将耗尽时，只需要增加一个或多个storage，并将它们配置为一个新的group，这样就可以扩大fastdfs的容量。