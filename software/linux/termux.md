# termux

- Android终端模拟器和带有Linux环境的应用程序
- 使用APT包管理器

---

```sh
# 更改仓库
termux-change-repo
# 安装存储
termux-setup-storage

```


---

## pkg

```sh

pkg update

pkg install sshd
# pkg uninstall xxx



pkg install termux-services
sv-enable sshd


pkg install proot
termux-chroot

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