# HDFS
> 分布式文件系统(Hadoop Distributed File System)

- Google发表三篇论文，GFS(Google File System)
- Doug Cutting


---
## 分布式文件系统
- 一次写入
- 多次读取
- 按流处理




Active NameNode是系统的主节点，只有一个，
管理文件系统命名空间，维护文件元数据信息，
管理HDFS的副本策略，处理客户端的读写请求。


Standby NameNode是Active NameNode的热备节点，
周期性同步edits的编辑日志，定期合并fsimage和eidts到本地磁盘，
当Active NameNode出现故障时，集群可以几乎无缝切换到Standby NameNode




NameNode元数据文件包括edits和fsimage
edits保存客户端对文件的写操作记录，
fsimage保存了文件系统中的所有目录和文件信息，
fsimage为文件系统元数据的检查点镜像文件，
NameNode中的内存中保存着最新的镜像信息，镜像内容为fsimage + edits，
NameNode会定期将内存中的数据增量备份到磁盘中








DataNode是工作节点，一般启动多个，存储Block数据块和数据校验和
DataNode通过心跳机制定期向NameNode汇报运行状态和所有块的信息
在集群启动时DataNode向NameNode提供存储的Block数据块的列表信息

Block数据块是HDFS的最小存储单元，将存储的数据按照固定大小切分成Block数据块
Block数据块的大小固定，Hadoop2.0默认128M，1. 0默认64MB，可自定义修改
默认每个Block数据块有三个副本，存放在不同的DataNode工作节点
