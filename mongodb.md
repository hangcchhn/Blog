# MongoDB

## 一、基础

### 1.介绍

MongoDB是分布式的文档数据库。

### 2.安装

下载地址：https://www.mongodb.com/download-center

- 服务端：mongod
  - 安装：mongod  --dbpath=./data/db --logpath=./data/log/log --install
  - 卸载：mongod  --dbpath=./data/db --logpath=./data/log/log --remove
- 客户端：mongo
  - 连接：mongo

## 二、操作

### 1.数据结构

- database——数据库
- collection——集合
- document——文档
- field——域

### 2.数据库操作

```
//连接默认打开test数据库
//显示所有数据库
show dbs
//创建并切换数据库
use database_name
//获取名称
db.getName()
//查看状态
db.stats()
//查看帮助
db.help()
//删除数据库
db.dropDatabase()
```



### 3.集合操作

```
//
show collections
//
db.createCollection("collection_name")
//
db.collection_name.drop()


```



### 4.文档操作

- JSON:`{"key":value}`
- BSON:`{key:value}`



```
//插入
db.collection_name.insert({key:value,})
//修改(注意差异)
db.collection_name.update({key:value,},{key:value,})
db.collection_name.update({key:value,},{$set:{key:value,}})
db.collection_name.update({key:value,},{$unset:{key:value,}})
//删除
db.collection_name.remove({key:value,})


//查询单个（默认第一个）
db.collection_name.findOne()
//查询所有（pretty()格式化）
db.collection_name.find().
//查询多个（条件查询）
db.collection_name.find({key:value})
/*
primary key _id 24bit 3byte
{"_id" : ObjectId("xxxxxxxxxxxxxxxxxxxxx"),}

//与
find({key0:value0,key1:value1})
//或$or
find({"$or":{key0:value0,key1:value1}})

//条件查询
$gt> $lt< $gte>= $lte<=
find({number:0},)
find({number:{"$gt":0},})

//嵌套.成员
insert({key0:{key00:{key000:value000,}}})
find({key0.key00.key000:value000})
//组合$all
insert({key0:[value1,value2]})
find({key:{"$all":[value1,value2]}})

//
insert({key0:value,key1:value1})
find({key0:value0},{key0:0,key1:1})


*/






```

