

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

