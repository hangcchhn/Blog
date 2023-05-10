
ssh

- linux:openssh
```sh
# centos
yum install openssh-server
yum install openssh-client

# ubuntu
apt install openssh-server
apt install openssh-client
```

---
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

---

.ssh/id_rsa-remote-ssh.pub
.ssh/id_rsa-remote-ssh

.ssh/config
.ssh/known_hosts


---


免密码登陆
---


macos:zsh
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa-remote-ssh

ssh-copy-id -i ~/.ssh/id_rsa-remote-ssh.pub root@192.168.10.202
ssh-add -K ~/.ssh/id_rsa-remote-ssh
---


linux:bash

ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa-remote-ssh

ssh-copy-id -i ~/.ssh/id_rsa-remote-ssh.pub root@192.168.10.202


- ~\.ssh\config
```
Host 192.168.10.202
    HostName 192.168.10.202
    User root
    IdentityFile ~/.ssh/id_rsa-remote-ssh
Host cent02
    HostName cent02
    User root
    IdentityFile ~/.ssh/id_rsa-remote-ssh
```
---

windows LTSC 2019:PowerShell 非管理员运行

mkdir "$env:USERPROFILE\.ssh"
ssh-keygen -t rsa -b 4096 -f "$env:USERPROFILE\.ssh\id_rsa-remote-ssh"

$REMOTEHOST="root@192.168.10.159"
scp "$env:USERPROFILE\.ssh\id_rsa-remote-ssh.pub" "${REMOTEHOST}:~/tmp.pub"
ssh "$REMOTEHOST" "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat ~/tmp.pub >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys && rm -f ~/tmp.pub"


---

centos 6.x
PowerShell
cmd
ssh root@192.168.10.153


git bash
Unable to negotiate with 192.168.10.153 port 22: no matching host key type found. Their offer: ssh-rsa,ssh-dss


代替ssh-add手动在$env:USERPROFILE\.ssh\config文件中添加

Host 192.168.10.153
    HostkeyAlgorithms +ssh-rsa
    HostName 192.168.10.153
    User root
    IdentityFile ~/.ssh/id_rsa-remote-ssh


---
ssh cent
Permission denied (publickey,gssapi-keyex,gssapi-with-mic,password).

手动在config文件中添加
Host cent
  HostName cent
  User root
  IdentityFile ~/.ssh/id_rsa-remote-ssh
---


WARNING: UNPROTECTED PRIVATE KEY FILE!
密钥文件权限不能为777,不能被其它用户读取。
chmod 700 id_rsa-remote-ssh

---

Bad owner or permissions on .ssh/config

.ssh->右键->属性->安全->高级->禁用继承->从此对象中删除所有继承的权限

添加用户
启用继承

