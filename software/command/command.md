

```sh
# 查看磁盘使用情况
df -h

# 查看内存使用情况
free -h


# 查看当前目录下的文件夹大小
du -h --max-depth=1 .
du -sh *






iostat

apt install sysstat

mpstat



```

---


ls -a 显示所有文件包括隐藏文件

ls -l 显示文件详细信息


### 文件类型
- -:
- d:目录文件夹 directory
- c:字符设备 char device
- b:块设备 block device
- s:套接字文件 socket file
- l:链接文件 link file
- p:管道 pipe


ls -la:long all

ls -lh 文件大小使用K，M，G单位更加人性化

ls -t 按修改时间由近到远(-tr倒序)来排序显示


ls -i 显示文件索引节点地址

ls -d file 只显示匹配的目录 file为空表示. 显示当前目录

---
每个文件对应都有一个索引节点index node
file -> inode

stat file 显示文件的索引节点

- File: `文件名'
- Size: 文件大小  Blocks: 块数量 IO Block: 块大小 regular file
- Device: 设备编号 Inode: 索引节点地址 Links链接数: 1
- Access文件权限: (0755/-rwxr-xr-x) Uid: ( 0/ root) Gid: ( 0/ root)
- Access访问时间: 2019-10-13 23:32:18.832307995 +0800 访问内容
- Modify修改时间: 2018-06-29 22:44:50.000000000 +0800 修改内容
- Change状态时间: 2020-06-29 04:09:19.377786432 +0800 修改状态（大小，权限，链接）




touch 创建文件或修改文件时间戳

touch file -a|-m -d 'yyyy-MM-dd' -t 'HH:mm:ss'
-a 访问时间
-m 修改时间
-d 'yyyy-MM-dd' -t 'HH:mm:ss' 使用指定⽇期时间，否则使用当前日期时间


---
软连接

快捷方式 符号链接 Symbolic Link
ln -s link_file desc_file

硬链接
ln dest_file link_file

查看链接
ls -la
lrwxr-xr-x 1 root root 10 Mon d yyyy link_file -> desc_file


unlink link_file
rm link_file

---





zmodel:xshell

yum install lrzsz

rz linux receive zmodel 远程上传
sz linux send zmodel 远程下载





-------------------------------------------


wc -l 按行统计


-------------------------------------------

查看历史
history
后多少条
history 10


---



Writing to this file causes the kernel to drop clean caches,dentries and inodes from memory, causing that memory to becomefree.
to free pagecache, use echo 1 > /proc/sys/vm/drop_caches;
to free dentries and inodes, use echo 2 > /proc/sys/vm/drop_caches;
to free pagecache, dentries and inodes, use echo 3 >/proc/sys/vm/drop_caches.
Because this is a non-destructive operation and dirty objects are not freeable, the user should run sync first.

sync
echo 0 > /proc/sys/vm/drop_caches
echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches



---

防护墙
centos6:
service iptable stop
service ip4table stop
service ip6table stop

centos7:
service firewalld stop

---

firewall-cmd --permanent --add-port=2375/tcp
firewall-cmd --reload

---


- `uptime`
```
- 23:26:20 up 1 min,  2 users,  load average: 0.42, 0.24, 0.09
- HH:mm:ss up 系统运行时间,  登录用户数量 users, load average: 最近1分钟, 5分钟, 15分钟的系统负载

```

---
## 关机重启

```sh
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

