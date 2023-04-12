# MySQL管理


---
## 数据库数据文件夹datadir中的文件类型

- db.opt:用来记录该库的默认字符集编码和字符集排序规则用的
- table_name.frm:存储与表相关的元数据信息，主要是表结构的定义信息
- table_name.idb:InnoDB存储引擎的存储数据库表的文件，包括数据和索引

- 当采用共享表空间时所有InnoDB表的数据均存放在table_name.ibdata中
- MySQL5.7默认配置的是独享表空间

- my.ini|cnf
```ini
innodb_file_per_table=1
```


- .MYD(MyISAM Data)是MyISAM存储引擎用于存储数据库表数据的文件；
- .MYI(MyISAM Index)是MyISAM存储引擎用于存储数据库表索引相关信息的文件。

