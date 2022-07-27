# shell

## 解压压缩

```


# 解压x：抽取extract
tar -xvf xxx.tar
tar -zxvf xxx.tar.gz
tar -jxvf xxx.tar.bz2
tar -Zxvf xxx.tar.Z
tar -Jxvf xxx.tar.xz

unzip xxx.zip
unrar e xxx.rar

xz -d xxx.tar.xz
# 解压xz文件生成tar文件

# 压缩c：创建create
tar -cvf xxx.tar xxx
tar -zcvf xxx.tar.gz xxx
tar -jcvf xxx.tar.bz2 xxx
tar -Zcvf xxx.tar.Z xxx
tar -Jcvf xxx.tar.xz xxx



```

## 远程控制
```
# ssh remote
ssh remote_user@remote_host

# scp local remote
scp local_file remote_user@remote_host:remote_path
scp -R local_dir remote_user@remote_host:remote_path

# scp remote local
scp remote_user@remote_host:remote_file local_path
scp -R remote_user@remote_host:remote_file local_path

```


## 时区时间

```
# 时间
# 查询时区时间
date
# 修改时间
date -s "yyyy-MM-dd HH:mm:ss"


# 时区：GMT|CST
# 查看当前时区
cat /etc/localtime
# 查看所有时区
cd /usr/share/zoneinfo/

# 修改时区为GMT
rm -f /etc/localtime
cp /usr/share/zoneinfo/GMT0 /etc/localtime

sudo cp -f /usr/share/zoneinfo/GMT  /etc/localtime
sudo cp -f /usr/share/zoneinfo/UTC  /etc/localtime



# 修改时区为CST
rm -f /etc/localtime
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

sudo cp -f /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
export TZ=Asia/Shanghai

tzselect







```

## 系统命令




```

# 服务状态|开启|停止|重启
service ****** status|start|stop|restart

# 服务开机启用|禁用
chkconfig ****** on|off

# 服务状态|开启|停止|重启
systemctl status|start|stop|restart ******|******.service

# 服务开机启用|禁用
systemctl enable|disable ******|******.service



systemctl list-unit-files


```


## 复制移动

> 复制copy
> 移动move


### 删除
```
# 选项
-f（确认）
-r（递归）
# 删除文件
rm -f /path/name.file
# 删除文件夹
rm -rf /path/dir/
```

### 复制

> -f ： 如果有同名文件时才会出现需要确认

```
# 复制文件到目标路径
cp -f file /dest/path/
# 复制文件到目标路径并对文件进行重命名
cp -f old_file /dest/path/new_file

# 将文件夹复制到目标路径
cp -rf dir /dest/path/
# 复制文件夹到目标路径并对文件夹进行重命名
cp -rf dir/ /dest/path/not_exist_dir/
# 目标路径下不存在的文件夹就表示对文件夹重命名


# 将文件夹下的全部复制到目标路径
cp -rf dir/* /dest/path/
# 虽说不带*也是一样的，但是不建议
cp -rf dir/ /dest/path/
# 网上说不同linux对此支持不一样


```
### 移动

> -r : 没有这个选项直接移动文件或文件夹


```
# 移动文件到路径
mv -f /scr/path/name.file /dest/path/
# 移动并重命名文件
mv -f /scr/path/name.file /dest/path/name.file
# 移动文件夹到路径
mv -f /scr/path/dir/ /dest/path/
# 移动并重命名文件夹
mv -f /scr/path/dir/ /dest/path/dir/




```


## 关机重启

```
# 关机
halt
shutdown -h now

# 重启
reboot
shutdown -r now

# 取消
shutdown -c


# 定时
shutdown -h|-r n (单位分钟)
shutdown -h|-r HH:mm
shutdown -h|-r HH:mm:ss

# 断电
poweroff


# 初始化
init n
# 0 - 停机
# 1 - 单用户模式
# 2 - 多用户，没有 NFS
# 3 - 完全多用户模式(标准的运行级)
# 4 – 系统保留的
# 5 – X11 （x window)
# 6 - 重新启动

# 账户
login:chench
# 密码
password:chench
# 注销
logout
# 退出
exit



```
































