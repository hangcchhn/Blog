

yum clean all && yum makecache

yum update && yum upgrade

yum install -y epel-release

yum install -y vim
vim

yum install -y net-tools
ifconfig

yum install -y telnet
telnet







yum install -y gcc
yum install -y gcc-c++


yum install -y zip unzip
zip
unzip

yum install -y git




--------------------------------------------------------------------------------------------------

centos 6.10
centos 8.5

https://developer.aliyun.com/mirror/centos/


--------------------------------------------------------------------------------------------------

centos 6.10下载源码编译安装python 3.6.5

https://www.python.org/ftp/python/

pip -> yum install -y openssl-devel

ipython -> yum install -y sqlite-devel

tar -zxvf Python-3.6.5.tgz
cd Python-3.6.5

./configure --prefix=/usr/python/python-3.6.5 --enable-optimizations

make && make install

--------------------------------------------------------------------------------------------------




centos 6
service iptables stop
chkconfig iptables off

centos 7
systemctl stop firewalld
systemctl disable firewalld

vim /etc/selinux/config
#SELINUX=enforcing
SELINUX=disable

sed -i "s/.*SELINUX=.\*/SELINUX=disabled/g" /etc/selinux/config

--------------------------------------------------------------------------------------------------
安装yum工具包
yum install yum-utils

查询依赖提供者
repoquery --nvr --whatprovides xxx

在线安装软件包
yum install -y xxx