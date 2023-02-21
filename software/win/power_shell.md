# PowerShell

---





---



Open SSH Server


设置->应用->应用和功能->可选功能->OpenSSH 服务器


Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH*'


Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0


Start-Service sshd


Set-Service -Name sshd -StartupType 'Automatic'
---

## Windows LTSC

```
Add-AppxPackage -Path xxx.appx
Add-AppxPackage ./xxx.msixbundle

```

---

Get-Help


查找命令所在位置
Get-Command ssh


---

- PowerShell Hyper-V
bcdedit /set hypervisorlaunchtype off