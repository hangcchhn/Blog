# Linux

## file system
> /
- bin/:
- lib/:
- sbin/:
- slib/:

- home/:普通用户
- root/:超级用户

- etc/:软件配置目录
- usr/:系统软件目录
    - bin/:
    - lib/:
    - local/:
    - share/:
    - man/:

- opt/:应用软件目录
- tmp/:临时文件目录
- var/:
    - tmp/:

- dev/:设备
- mnt/:挂载

- boot/:系统引导
- proc/:进程信息



## disk manage





---
## configuration

1. 系统配置文件:/etc/profile
2. 系统配置目录:/etc/profile.d/
4. ~/.bash_profile
3. ~/.bashrc
5. /etc/bashrc

---
- ~/.profile,~/.bash_profile
- ~/.bash_login,~/.bash_logout
- ~/.bash_history
- ~/.bashrc
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

- ~/.profile
```sh

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

# source /etc/profile
if [ -f /etc/profile ]; then
    . /etc/profile
    fi

```