
# MySQL configuration





---
## Windows

- C:\Windows\my.ini
- C:\Windows\my.cnf
- C:\my.ini
- C:\my.cnf
- C:\ProgramFiles\MySQL\my.ini
- C:\ProgramFiles\MySQL\my.cnf


- HKEY_LOCAL_MACHINE/SYSTEM/CurrentControlSet/Services/Eventlog/Application/MySQL
- HKEY_LOCAL_MACHINE/SYSTEM/ControlSet001/Services/Eventlog/Application/MySQL
- HKEY_LOCAL_MACHINE/SYSTEM/ControlSet00N/Services/Eventlog/Application/MySQL








---
## Linux

- /etc/my.cnf
- /etc/mysql/my.cnf
- /usr/local/mysql/etc/my.cnf

- ~/.my.cnf
- ./my.cnf


```sh
cd /usr/local/mysql/

cp support-files/my-default.cnf /etc/my.cnf

support-files/mysql.server start|stop|restart|status
mysqld_safe --user=root


```


```ini
basedir=/usr/local/mysql/
datadir=/var/lib/mysql
socket=/var/lib/mysql/mysql.sock

pid-file=/var/run/mysqld/mysqld.pid
log-error=/var/log/mysqld.log

```




---
- my.cnf
```ini

[mysqld_safe]
pid-file=/opt/mysql/mysql-8.0.16/data/mysql.pid
log-error=/opt/mysql/mysql-8.0.16/data/mysql.log

[mysqld]
character-set-server=utf8mb4

basedir=/opt/mysql/mysql-8.0.16
datadir=/opt/mysql/mysql-8.0.16/data
socket=/opt/mysql/mysql-8.0.16/data/mysql.sock
port=3306
user=root

[mysql]
default-character-set=utf8mb4

[client]
default-character-set=utf8mb4

socket=/opt/mysql/mysql-8.0.16/data/mysql.sock
port=3306

```

---


## macosx:

---


设置mysql字符集问题

my.cnf|my.ini:
```ini
[mysqld]
# utf8
character-set-server=utf8

[mysql]
# utf8
default-character-set=utf8

[client]
# utf8
default-character-set=utf8
```

- shell: service mysqld restart
- shell: systemctl restart mysqld

- mysql> show variables like 'character%';

---


# 设置全局连接等待超时
mysql> set global wait_timeout=10;

# 查看连接相关配置参数
mysql> show variables like "%connect%";
```ini
# 连接字符集
character_set_connection=utf8

# 连接校验集
collation_connection=utf8_general_ci

# 不连接密码是否失效开关
disconnect_on_expired_password=ON

# 初始化连接数
init_connect=1

# 连接超时时间（单位秒）
connect_timeout=10

# 数据库最大连接数
max_connections=1000

# 数据库最大失败连接数
max_connect_errors=100

# 用户最大连接数
max_user_connections=1000
```
---

/usr/local/mysql/etc/my.cnf

mysql 主备同步

分配主备用户权限
mysql> grant replication slave on *.* to 'slave'@'%' identified by 'chench';


- my.cnf|my.ini:

```ini
[mysql]

# 忽略ignore
binlog-ignore-db=sys
binlog-ignore-db=mysql
binlog-ignore-db=information_schema
binlog-ignore-db=performance_schema

# 主机master
server-id=1
log-bin=mysql-bin
binlog-format=STATEMENT
binlog-do-db=mycat_mysql

# 备机slave
server-id=2
relay-log=mysql-bin|mysql-relay|
replicate-do-db=mycat_mysql
replicate-ignore-db=mysql,information_schema,performance_schema


mysql> change master to
master_host='192.168.10.153',
master_port=3306,
master_user='slave',
master_password='chench',
master_log_file='mysql-bin.000001',
master_log_pos=590;
```

```sql
mysql> show master;
mysql> show master status;
mysql> show slave status\G;
mysql> show processlist\G;


-- \G：列转行输出结果


mysql> start slave;
mysql> stop slave;
mysql> reset master;
```





---
