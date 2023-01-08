
# 进程
> process

---



## ps -ef:System V 风格：

- UID :用户ID、但输出的是用户名
- PID :进程的ID
- PPID :父进程ID
- C :进程占用CPU的百分比
- STIME //进程启动到现在的时间
- TTY :该进程在那个终端上运行，若与终端无关，则显示? 若为pts/0等，则表- 示由网络连接主机进程。
- CMD :命令的名称和参数

---
## ps aux:BSD|Unix 风格：

- USER :用户名
- %CPU :进程占用的CPU百分比
- %MEM :占用内存的百分比
- VSZ :该进程使用的虚拟內存量（KB）
- RSS :该进程占用的固定內存量（KB）（驻留中页的数量）
- STAT :进程的状态
- START :该进程被触发启动时间
- TIME :该进程实际使用CPU运行的时间

---
### STAT:进程状态标志

- D :无法中断的休眠状态（通常 IO 的进程）；
- R :正在运行可中在队列中可过行的；
- S :处于休眠状态；
- T :停止或被追踪；
- W :进入内存交换 （从内核2.6开始无效）；
- X :死掉的进程 （基本很少见）；
- Z :僵尸进程；
- < :优先级高的进程
- N :优先级较低的进程
- L :有些页被锁进内存；
- s :进程的领导者（在它之下有子进程）；
- l :多线程，克隆线程（使用 CLONE_THREAD, 类似 NPTL - pthreads）；
- \+ :位于后台的进程组；


---
```sh
# 线程
ps H -eo tid,pid,ppid,user,time,%cpu --sort=%cpu

# 进程树
ps auxf

# 终止进程

ps aux | grep xxx | grep -v grep | awk '{print $2}' | xargs kill -9


pids = `pgrep -f 'file'`
for pid in ${pids}
do
 kill -9 $pid
done

ls -la /proc/pid
cwd # 进程目录
exe # 进程程序
```
---

## 配置系统启动自动执行脚本
```sh
ls -la /etc/rc.local
# /etc/rc.local -> rc.d/rc.local
vim /etc/rc.d/rc.local
chmod +x /etc/rc.d/rc.local

#
cd /etc/rc.d/init.d/
vim auto_start.sh
#!/bin/sh
#chkconfig: 2345 80 90
#description:auto start

chmod +x auto_start.sh
chkconfig --add auto_start.sh
chkconfig auto_start.sh on
```


---
## 启动后台运行

```sh
# 控制台日志输出到当前路径下的nohup.out文件
nohup java -jar *.jar &

# 控制台不输出日志
nohup java -jar *.jar > /dev/null &

# 控制台日志输出到指定文件
nohup java -jar *.jar > out.log 2>&1 &


jps -l
```
---

```sh
pmap:report memory map of a process
查看进程的内存映像关系

# device显示设备格式
pmap -d pid

# extended显示拓展格式
pmap -x pid
```


---



```
pidstat -p pid 几秒采样一次 总共采样次数
-u:显示CPU
-d:显示IO
-r:显示内存
-t:显示线程
-l:显示命令
-w:显示进程的上下文切换情况
-T { TASK | CHILD | ALL }
```
---
```sh
# 发送hang up挂断信号，系统会重启进程进行复位操作重新读取配置文件

kill -HUP pid

kill -HUP `cat /path/file.pid`
```

---
