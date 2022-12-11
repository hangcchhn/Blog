
# environment variable
> 环境变量

---
## Linux系统
```sh
env key=value


```



---


1. 系统配置文件:/etc/profile
2. 系统配置目录:/etc/profile.d/
4. ~/.bash_profile
3. ~/.bashrc
5. /etc/bashrc

---
- ~/.profile,~/.bash_profile
- ~/.bash_login,~/.bash_logout
- ~/.bash_history

---

- /etc/bash.bashrc:Ubuntu用户登录时读取一次，每次打开一个新终端会话时读取一次

- /etc/bashrc:CentOS用户登录时读取一次，每次打开一个新终端会话时读取一次。

- 用户配置路径:~/.bash_profile
- 全局配置路径:/etc/profile

- 图形化界面登录读取配置文件:~/.bash_profile
- 命令行界面登录读取配置文件:~/.bashrc
- 系统启动执行:~/.bashrc
- 用户登录执行:~/.profile

- CentOS 6.x
    - 读取~/.bashrc
    - 不读取~/.bash_profile，

- Ubuntu 20.04.x:系统重启/etc/profile环境变量不生效



---

## Windows系统

### 图形化设置
```
我的电脑
计算机
此电脑



控制面板\系统和安全\系统

```
---
### 命令行设置
- cmd.exe

- xxx.bat
```bat

set key value


setx key value

```
- powershell.exe



---
## python语言

```py
import os

os.environ['JAVA_HOME'] = r'C:/java/jdk/'
print(os.environ['JAVA_HOME'])



```


