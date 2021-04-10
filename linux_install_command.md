# Linux Install Command

> Linux系统软件安装命令


## Unix/Linux

```

# 离线安装
./xxx.bin


```

## RedHat/CentOS

> rpm(RedHat Package Manager)

```

# 在线安装
yum install xxx

# 离线安装
rpm -ivh xxx.rpm

```



## Debian/Ubuntu

> dpkg(Debian Package) /deb(Debian)

```

# 在线安装
apt install xxx

# 离线安装
dpkg -i xxx.deb


```

## apt(Advanced Packaging Tool)

```

 
apt install xxx
apt remove xxx
apt remove --purge xxx
apt autoremove xxx

apt update
apt upgrade


apt search xxx
apt show xxx







```

## yum(Yellowdog Updater Modified)



```

yum install xxx
yum remove xxx

yum update
yum upgrade

```

## rpm(RedHat Package Manager)

```
# 安装
rpm -ivh xxx.rpm
# 查询
rpm -qa | grep xxx
# 卸载
rpm -e xxx



```







## dpkg(Debian Package)

```
# 安装
dpkg i xxx.deb
# 列表
dpkg -L|--list-files xxx
dpkg -l xxx
# 查询
dpkg -s|--status xxx
dpkg -S|--search xxx


# 卸载软件删除配置
dpkg -P|--purge xxx
# 卸载软件保留配置
dpkg -r|--remove xxx


# 解压软件
dpkg --unpack xxx.deb

# 配置软件
dpkg --configure xxx
# 软件内容
dpkg -c xxx.deb


```


## epel(Extra Packages for Enterprise Linux)

```



# 安装企业linux额外package发布
yum install epel-release



# epel alien
yum install alien
# deb -> rpm
alien -r xxx.deb
# rpm -> deb
alieb -d xxx.rpm


```
