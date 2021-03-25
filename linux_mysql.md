# CentOS MySQL

## 一、下载


- 下载链接：https://downloads.mysql.com/archives/community/
- 选择版本：5.7.9和Linux
- 下载软件：mysql-5.7.9-1.el6.x86_64.rpm-bundle.tar

## 二、安装
1.卸载
```
# 卸载系统自带的mysql及其依赖
rpm -qa|grep mysql
yum remove mysql-libs

# mariadb是mysql的一个分支
rpm -qa|grep mariadb

```

2.解压
`tar -xvf mysql-5.7.9-1.el6.x86_64.rpm-bundle.tar`

3.安装
```
rpm -ivh mysql-community-common-5.7.9-1.el6.x86_64.rpm
rpm -ivh mysql-community-libs-5.7.9-1.el6.x86_64.rpm
rpm -ivh mysql-community-client-5.7.9-1.el6.x86_64.rpm

# 缺少依赖libnuma.so.1
yum install -y numactl

rpm -ivh mysql-community-server-5.7.9-1.el6.x86_64.rpm

```


4.启动
```
rm -rf /var/lib/mysql/*

sudo mysqld --initialize

chown -R mysql:mysql /var/lib/mysql/*

service mysqld start


```


5.连接


## 三、配置