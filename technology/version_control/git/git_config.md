# Git配置
## 配置用户名和邮箱

全局设置
git config --global user.name "hangcchhn"
git config --global user.email "hangcchhn@163.com"

局部配置
git config user.name "hangcchhn"
git config user.email "hangcchhn@163.com"

---

## 配置免密访问

### 生成~/.gitconfig文件
`git config --global credential.helper store`


```ini
[credential]
	helper = store
[gui]
	encoding = utf-8
[user]
	email = hangcchhn@163.com
	name = hangcchhn
```
- 配置~/.git-credentials文件
```
https://username:password@host:port
```

---


https://vscode-update.azurewebsites.net/1.10.2/win32/stable
https://github.com/git-for-windows/git/releases/download/v2.10.2.windows.1/Git-2.10.2-32-bit.exe


更新windows版的git客户端
git update-git-for-windows

---


git 2.5.0

右键图标

New->String Value->Icon

HKEY_CLASSES_ROOT\Directory\Background\shell\git_shell
HKEY_CLASSES_ROOT\Directory\shell\git_shell

C:\ProgramFiles\Git\mingw32\share\git\git-for-windows.ico
---


最后一个支持winxp系统的git版本git 2.10.0

---
git 2.23.0

默认主线分支matser改成main

新增git switch和git switch指令




---


yum -y install curl-devel expat-devel gettext-devel openssl-devel zlib-devel
make configure
./configure --prefix=/usr/git
make all doc info
make install install-doc install-html install-info

centos 6.10.0 git 2.5.0 测试失败 openssl




---




