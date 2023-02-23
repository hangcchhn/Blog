# WSL

- Windows 10(版本>1903、内部版本>18362)或 Windows 11
- 启用或关闭Windows功能->适用于Linux的Windows子系统
```powershell
# 虚拟机平台
dism /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# 已退出进程,代码为 4294967295 (0xffffffff)]
bcdedit /set hypervisorlaunchtype auto



```
---
- Ubuntu
- Debian

---
## 命令
```powershell
wsl --help



# 分发distribution:Linux子系统Ubuntu
# 列出所有容器版本
wsl --list --verbose
  NAME                   STATE           VERSION
* Ubuntu                 Running         1

# 更改默认分发
wsl --set-default Ubuntu

# 更改指定分发版本
wsl --set-version Ubuntu 2

# 更改分发默认版本
wsl --set-default-version 2


wsl --status
wsl --update


wsl --list --online

wsl --install --distribution Ubuntu

# 关闭所有分发
wsl --shutdown 
# 关闭指定分发
wsl --terminate Ubuntu

```

