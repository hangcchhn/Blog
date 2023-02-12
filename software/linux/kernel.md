# 内核



linux
获取当前运行内核版本
uname -r



---
- CentOS

```sh
# 查看所所有安装的内核版本
rpm -qa| grep kernel
# 删除具体单个内核
rpm -e 具体内核名和版本

# 查看所所有安装的内核版本
yum search kernel
# 删除具体单个内核
yum remove 具体内核名和版本

```


---

·
- Ubuntu
```sh
# 查看已安装内核
dpkg --get-selections |grep linux-modules
dpkg --get-selections |grep linux-headers

# 卸载内核并删除配置文件
apt purge linux-modules-?
apt purge linux-headers-?

# 移除失效的启动项
update-grub

# 处理 deinstall
dpkg --purge `dpkg --get-selections | grep deinstall | cut -f1`


```