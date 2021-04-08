# Linux Vsftp
> Very Secure FTP 
> Unix/Linux 系统自带


## 命令

- 服务名称：`vsftpd`

- 查询vsftp状态/vsftp启动/关闭/重启
`service vsftpd status/start/stop/restart`

- 开启/关闭开机自启
`chkconfig vsftpd on/off`



## 配置

### PORT主动模式/PASV被动模式

#### 默认主动模式

#### 配置被动模式
```
pam_service_name=vsftpd
userlist_enable=YES
tcp_wrappers=YES

listen_port=2100
port_enable=NO

pasv_enable=YES
pasv_min_port=2101
pasv_max_port=2120
pasv_promiscuous=YES
```

## 说明

### 使用配置
```
# vsftp使用系统用户作为登录用户步骤
# 创建路径
mkdir -p /ftp_path
# 添加用户
useradd -s /sbin/nologin -d /ftp_path ftp_user
# 修改密码
passwd ftp_user
ftp_passwd
ftp_passwd
# 编写脚本创建用户修改密码
echo ftp_user:ftp_passwd|chpasswd
# 修改权限
chown -R ftp_user:ftp_user /ftp_path
chmod -R 755 /ftp_path

```

### 被动模式
- vsftp被动模式相对严格，FileZillaServer的被动模式比较模糊
- xftp不支持被动模式，FileZillaClient是比较好的ftp客户端
- windows系统的ftp命令行
- 被动模式主要是控制用户连接端口和数据传输端口，当用户登录后服务端通知客户端使用哪个端口传输数据，客户端再连接这个端口获取数据

- 

### 网络映射
- 在使用端口映射中，注意被动模式的用户连接和数据传输端口的两端映射端口必须一致
- 在使用MAC系统连接端口映射FTP服务器会出现数据传输错误


### 权限问题
- 在配置默认路径是要设置所属用户和用户组，还要配置用户和用户组的读写和执行权限
- 配置父子关系的ftp用户注意权限关系，将父子用户配置到同一组，将文件夹分别设置用户和公共组并配置755权限，这样父子用户都可以进行读写


### 版本差异
> 高版本服务端配置安全级别更高密码错误
```
# 530 Login incorrect
vim /etc/pam.d/vsftpd
# 将auth required pam_shells.so修改为#auth required pam_shells.so
systemctl restart vsftpd.service
# service vsftpd restart
```
> 对于高版本的vsftpd在设置禁止访问默认目录以外的目录时即：禁止访问系统根路径，根路径就是默认路径（用户路径）密码错误
```
# 只能访问默认路径（用户路径）禁止访问系统根路径
vim /etc/vsftpdd/vsftpd.conf
将#chroot_local_user=YES修改为chroot_local_user=YES
service vsftpd restart
# 530 Login incorrect
vim /etc/vsftpdd/vsftpd.conf
# 在文件末尾加一行allow_writeable_chroot=YES配置
systemctl restart vsftpd.service
```


### 安全问题
vsftpd使用必须禁用SELinux不然会设置密码登录不上去
```
# 临时设置
getenforce # Disabled
setenforce 0 # permissive
setenforce 1 # enforcing

# 永久设置
/usr/sbin/sestatus -v
SELinux status:disabled
vim /etc/selinux/config
# 将SELINUX=enforcing修改为SELINUX=disabled
reboot

```



### 嵌套配置

```
# 父用户
mkdir -p /ftp_path/sup_path
useradd -s /sbin/nologin -d /ftp_path/sup_path sup_user
echo sup_user:sup_passwd|chpasswd
chown -R sup_user:sup_user /ftp_path/sup_path
chmod -R 755 /ftp_path/sup_path

# 子用户
mkdir -p /ftp_path/sup_path/sub_path
useradd -s /sbin/nologin -d /ftp_path/sup_path/sub_path sub_user
echo sub_user:sub_passwd|chpasswd
# 注意给子用户绑定父用户组
chown -R sup_user:sub_user /ftp_path/sup_path/sub_path
chmod -R 755 /ftp_path/sup_path/sub_path

# 子目录下的公共目录挂载父目录下公共目录（注意挂载命令必须在分配权限之后执行）
mkdir -p /ftp_path/sup_path/pub_path
mkdir -p /ftp_path/sup_path/sub_path/pub_path
mount --bind /ftp_path/sup_path/pub_path /ftp_path/sup_path/sub_path/pub_path
```






