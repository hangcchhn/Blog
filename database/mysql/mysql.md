


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



---

## database
- information_schema
- performance_schema

- mysql
- sys



---


```sql

-- 导出csv文件
select * from table_name
    into outfile '/folder/file.csv'
    fields terminated by ","
    escaped by '' optionally
    enclosed  by ''   lines
    terminated by '\n' ;


show variables like '%secure%';
-- secure_file_priv
-- ini:secure-file-priv=/folder



```
---

```sh
mysqldump -u<username> -p<password> \
-t -T /folder database  table \
--fields-terminated-by=',' \
--fields-escaped-by='' \
--fields-optionally-enclosed-by=''


```
- `-t`：只导表数据，不导表结构