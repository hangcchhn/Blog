

```

yum install xxx
yum remove xxx

yum update
yum upgrade

yum search xxx
yum info xxx

```

---

- 访问https://vault.centos.org/网址，现在选择CentOS版本，在进入os/x86_64/Packages/下搜索

```sh
# yum下载rpm包
yum install --downloadonly package --downloaddir= direction

```


---
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