


# 存储引擎
mysql> show engines;
InnoDB
MyISAM
MEMORY
BLACKHOLE
ARCHIVE
FEDERATED

# 查看版本号
select version();





---

查看mysql进程信息，终止进程Id

select * from information_schema.processlist;


show processlist;
show full processlist;

kill Id;

mysqladmin kill Id




