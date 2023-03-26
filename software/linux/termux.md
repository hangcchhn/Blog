# termux

- Android终端模拟器和带有Linux环境的应用程序
- 使用APT包管理器

---

```sh
# 安装存储
termux-setup-storage
# 更改仓库
termux-change-repo
```


---

## pkg

```sh
pkg help

pkg update

pkg install proot
termux-chroot

pkg install openssh
sshd
# sshd: no hostkeys available -- exiting
ssh-keygen -A

pkg install termux-services
sv-enable sshd




# pkg uninstall xxx

```


---
- python:https://wiki.termux.com/wiki/Python
```sh
pkg install python

```


---

```sh



pkg install proot-distro
proot-distro list
proot-distro install ubuntu
proot-distro login ubuntu



```