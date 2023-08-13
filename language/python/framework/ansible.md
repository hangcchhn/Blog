# Ansible

- 基于Python语言开发的自动化运维工具
```sh
# Ubuntu
apt install ansible
# CentOS
yum install ansible
```

---

- /etc/ansible/ansible.cfg

```cfg
inventory # 管理的主机清单文件路径
library# ansible的模块存放的目录
remote_tmp# 上述工作原理中提到的将脚本发送至对端的临时目录
local_tmp# 上述工作原理中提到本地生成脚本存放的临时目录
forks# 并发连接数，默认为5
sudo_user # 命令执行用户
remote_port # 访问管理主机的端口
host_key_checking# 设置是否检查SSH主机的密钥，默认为false
timeout # ssh连接被管理主机的超时时间
log_path# ansilbe日志文件路径
```
---
- /etc/ansible/hosts
```ini
[dbserver]
192.168.1.1
192.168.1.2
192.168.1.3
```
---
```sh

ansible-doc -l :列出所有模块
ansible-doc -s <模块名> ：查看模块的参数信息

ansible --version ：查看ansible版本
ansible -v ：输出详细详细；-vv：输出更详细的信息
ansible -m ：指定调用的模块名称
ansible -a ：调用模块的参数
ansilbe -c :测试命令执行结果，不实际执行
ansible -k :提示输入ssh的秘密，而不是基于ssh认证
ansible -u ：指定执行命令的用户
ansilbe -i ：指定访问的主机列表文件
ansilbe -f ：指定并发进程数
```

---
## Ansible Tower