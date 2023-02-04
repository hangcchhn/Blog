# MySQL install




## CentOS 6.x install MySQL 5.x
> centos 6.10 + mysql 5.7.9



1. 卸载
```sh
# 卸载系统自带的mysql及其依赖
rpm -qa|grep mysql
yum remove mysql-libs

# mariadb是mysql的一个分支
rpm -qa|grep mariadb

```

2. 下载


- 下载链接:https://downloads.mysql.com/archives/community/
- 选择版本:5.7.9和Linux
- 下载软件:mysql-5.7.9-1.el6.x86_64.rpm-bundle.tar
- 解压:`tar -xvf mysql-5.7.9-1.el6.x86_64.rpm-bundle.tar`

3. 安装
```sh
rpm -ivh mysql-community-common-5.7.9-1.el6.x86_64.rpm
rpm -ivh mysql-community-libs-5.7.9-1.el6.x86_64.rpm
rpm -ivh mysql-community-client-5.7.9-1.el6.x86_64.rpm

# 缺少依赖libnuma.so.1
yum install -y numactl

rpm -ivh mysql-community-server-5.7.9-1.el6.x86_64.rpm

# yum remove mysql-libs
rpm -ivh mysql-community-libs-compat-5.7.9-1.el6.x86_64.rpm


```


4. 启动
```sh
# datadir
rm -rf /var/lib/mysql/*

sudo mysqld --initialize

chown -R mysql:mysql /var/lib/mysql/*

service mysqld start


```



---
## Ubuntu install MySQL Online

1. 安装和启动

```sh
su root
apt search mysql
apt install mysql-server
service mysql start

```

2. 用户和密码
```sh
cat /etc/mysql/debian.cnf
mysql -u debian-sys-maint -p


```


## Docker install MySQL Image

```sh
mysql-server_5.7.9-1ubuntu14.04_amd64.deb-bundle.tar

tar -xvf mysql-server_5.7.9-1ubuntu14.04_amd64.deb-bundle.tar


grant all privileges on *.* to 'root'@'%' identified by 'chench' with grant option;

flush privileges;

docker commit ubuntu14.04 cch/ubuntu_mysql

docker run -it -p 3306:3306/tcp -e MYSQL_ROOT_PASSWORD=chench --expose 3306/tcp --name ubuntu_mysql cch/ubuntu_mysql


docker run -it -p 3306:3306/tcp --expose 3306/tcp --name ubuntu_mysql cch/ubuntu_mysql


docker run -it -p 33306:3306/tcp --expose 3306/tcp --name ubuntu_mysql cch/ubuntu_mysql

```



## Windows 10 install MySQL 8.x


> mysql-8.0.16-winx64.zip


- my.ini

```ini

[mysqld]
character-set-server=utf8mb4
port=3306
basedir=C:\ProgramFiles\MySQL
datadir=C:\ProgramFiles\MySQL\data

[mysql]
default-character-set=utf8mb4

[client]
default-character-set=utf8mb4
port=3306

```
---
```
.\bin\mysqld.exe --initialize --console

A temporary password is generated for root@localhost: ******

.\bin\mysqld.exe --install MySQL

net start mysql

.\bin\mysql.exe -u root -p



net stop mysql

.\bin\mysqld.exe --remove mysql

```


## CentOS 7.x install MySQL 8.x
-
```sh
rpm -e | grep mysql
rpm -e | grep mariadb

./bin/mysqld --initialize --user=root --basedir=/opt/mysql/mysql-8.0.16 --datadir=/opt/mysql/mysql-8.0.16/data

# /etc/my.cnf
./bin/mysqld --initialize --console --user=root

vim /etc/my.cnf

./support-files/mysql.server start|stop|restart|status


```
- CentOS 7.x install MySQL 7.x
- 系统重启删除/var/run/mysqld/（/var/run下的文件夹位于内存中）


```



```





```sh

# 安装时按配置初始化
./bin/mysqld --defaults-file=./etc/my.cnf --initialize --console

# /etc/my.cnf
./bin/mysqld --initialize --console

./support-files/mysql.server start


```