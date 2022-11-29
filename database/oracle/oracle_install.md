


# Centos Install Oracle

> centos 6.10 + oracle 12c



## 内存大小和交换区大小要求

- mem <= 2G -> swap = 1.5 * mem
- 2G < mem <= 16G -> swap = mem
- mem > 16G -> swap = 16G

- disk > 20G

```

free

# 增加2G=2048M
dd if=/dev/zero of=/opt/oracle/swap bs=1024 count=2048000

创建
mkswap /opt/oracle/swap
启动
swapon /opt/oracle/swap


vim /etc/fstab
# 最后一行追加
/opt/oracle/swap    swap    swap  defaults  0  0

free

关闭
swapoff /opt/oracle/swap
删除
rm -rf /opt/oracle/swap

```
cd
## 系统设置


```

groupadd oracle
useradd -g oracle -d /oracle oracle

passwd oracle
chench



vim /etc/security/limits.conf
oracle   soft   nofile    1024
oracle   hard   nofile    65536
oracle   soft   nproc    16384
oracle   hard   nproc    16384
oracle   soft   stack    10240
oracle   hard   stack    32768




vim /etc/sysctl.d/oracle.conf

fs.file-max = 6815744
fs.aio-max-nr = 1048576
kernel.sem = 250 32000 100 128
kernel.shmmni = 4096
kernel.shmall = 1073741824
kernel.shmmax = 4398046511104
kernel.panic_on_oops = 1
net.core.rmem_default = 262144
net.core.rmem_max = 4194304
net.core.wmem_default = 262144
net.core.wmem_max = 1048576
net.ipv4.conf.all.rp_filter = 2
net.ipv4.conf.default.rp_filter = 2
net.ipv4.ip_local_port_range = 9000 65500

sysctl -p /etc/sysctl.d/oracle.conf








```


```
su oracle
vim ~/.bashrc

export ORACLE_SID=orcl
export ORACLE_BASE=/opt/oracle
export ORACLE_HOME=$ORACLE_BASE/$ORACLE_SID
export CLASSPATH=$ORACLE_HOME/JRE:$ORACLE_HOME/jlib:$ORACLE_HOME/rdbms/jlib
export LD_LIBRARY_PATH=$ORACLE_HOME/lib:/lib64:/usr/lib64:/usr/local/lib64
export PATH=$PATH:$ORACLE_HOME/bin


```

## 安装配置
```

1.oracle用户执行
/root/oracle/database/runInstaller -silent -ignorePrereq -responseFile /root/oracle/database/response/db_install.rsp


2.root用户执行
/opt/oracle/orcl/root.sh

3.oracle用户执行
/root/oracle/database/runInstaller -silent -executeConfigTools -responseFile /root/oracle/database/response/db_install.rsp







```
## 启动停止
```
# centos系统启动停止
# oracle数据库的流程

# 0.切换用户
su oracle

# 1.启动监听器
lsnrctl start
# 2.启动数据库
dbstart

# 3.查询监听器状态
lsnrctl status

# 4.测试数据库连接
# 普通用户连接数据库
sqlplus system/oracle12C@orcl
# 使用管理员角色登陆数据库
sqlplus sys/oracle12C@orcl as sysdba


# 6.关闭数据库
dbshut
# 7.停止监听器
lsnrctl stop


```
```

默认使用环境变量ORACLE_HOME
dbstart
dbshut

dbstart /opt/oracle/orcl
dbshut /opt/oracle/orcl


/opt/oracle/orcl/network/admin/listener.ora




```

## 操作运维

```
# lsnrctl
lsnrctl version

lsnrctl services

lsnrctl status

lsnrctl trace
启动和停止监听器
lsnrctl start｜stop


# 保存listener.ora配置
lsnrctl save_config
# 重载listener.ora配置
lsnrctl reload


lsnrctl quit|exit

```