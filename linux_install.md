# Linux Install

> 安装软件


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

sudo apt install xxx
apt remove xxx

apt update
apt upgrade

```

## yum(Yellowdog Updater Modified)



```

yum install --assumeyes xxx
yum install -y xxx
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


## package

```

# java 
rpm -ivh jdk-8u144-linux-x64.rpm
# /usr/java


# epel(Extra Packages for Enterprise Linux)
yum install epel-release



# epel alien
yum install alien
# deb -> rpm
alien -r xxx.deb
# rpm -> deb
alieb -d xxx.rpm


```
