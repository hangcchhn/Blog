# Install MySQL




## CentOS MySQL Offline Install
> centos 6.10 + mysql 5.7.9



1. 卸载
```
# 卸载系统自带的mysql及其依赖
rpm -qa|grep mysql
yum remove mysql-libs

# mariadb是mysql的一个分支
rpm -qa|grep mariadb

```

2. 下载


- 下载链接：https://downloads.mysql.com/archives/community/
- 选择版本：5.7.9和Linux
- 下载软件：mysql-5.7.9-1.el6.x86_64.rpm-bundle.tar

3. 解压
`tar -xvf mysql-5.7.9-1.el6.x86_64.rpm-bundle.tar`

3.安装
```
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
```
rm -rf /var/lib/mysql/*

sudo mysqld --initialize

chown -R mysql:mysql /var/lib/mysql/*

service mysqld start


```


5. 连接

```
mysql -u root -h 127.0.0.1 -p chench

```



## Ubuntu  MySQL Online Install 

1. 安装和启动

```
su root
apt search mysql
apt install mysql-server
service mysql start

```

2. 用户和密码
```
cat /etc/mysql/debian.cnf
mysql -u debian-sys-maint -p


```


## Docker Install MySQL Image 

```
mysql-server_5.7.9-1ubuntu14.04_amd64.deb-bundle.tar

tar -xvf mysql-server_5.7.9-1ubuntu14.04_amd64.deb-bundle.tar


grant all privileges on *.* to 'root'@'%' identified by 'chench' with grant option;

flush privileges;

docker commit ubuntu14.04 cch/ubuntu_mysql

docker run -it -p 3306:3306/tcp -e MYSQL_ROOT_PASSWORD=chench --expose 3306/tcp --name ubuntu_mysql cch/ubuntu_mysql


docker run -it -p 3306:3306/tcp --expose 3306/tcp --name ubuntu_mysql cch/ubuntu_mysql


docker run -it -p 33306:3306/tcp --expose 3306/tcp --name ubuntu_mysql cch/ubuntu_mysql

```



## Windows 10 Install MySQL 8


> mysql-8.0.16-winx64.zip

1. 安装

```
.\bin\mysqld.exe --initialize --console

.\bin\mysqld.exe --install mysql8

net start mysql8

.\bin\mysql.exe -u root -p





```
2. 卸载

```

net stop mysql8

.\bin\mysqld.exe --remove mysql8

```