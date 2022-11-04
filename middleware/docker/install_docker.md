
# Install Docker


## centos install docker
> 至少centos7|centos6不行



1. 切换aliyun镜像
```
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
wget -O /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo
curl -o /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo
sed -i -e '/mirrors.cloud.aliyuncs.com/d' -e '/mirrors.aliyuncs.com/d' /etc/yum.repos.d/CentOS-Base.repo
yum makecache

``` 
2. 安装docker软件

```
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
yum list docker-ce --showduplicates | sort -r
yum install docker-ce-18.06.3.ce

```




3. docker开启Remote API 访问 2375端口
```
systemctl stop docker
sudo dockerd -H unix:///var/run/docker.sock -H tcp://0.0.0.0:2375

vim /usr/lib/systemd/system/docker.service
ExecStart=/usr/bin/dockerd -H unix:///var/run/docker.sock -H tcp://0.0.0.0:2375


systemctl daemon-reload
systemctl start docker
systemctl enable docker
```

4. 更好阿里云镜像加速器

```
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://8d3cvm4c.mirror.aliyuncs.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker

vim /etc/docker/daemon.json
{
  "registry-mirrors": ["https://docker.mirrors.ustc.edu.cn"]
}

{
  "registry-mirrors": ["https://registry.docker-cn.com"]
}
systemctl restart docker.service
```


## ubuntu install docker

```

# 卸载老版本
apt autoremove --purge docker
# 安装新版本
apt install docker.io

systemctl daemon-reload
systemctl start docker
systemctl enable docker


```



## mac install docker

###mac docker 不支持 remote api 
https://my.oschina.net/u/2306127/blog/777695




## win install docker


### Hyper-V
控制面板 -> 程序 -> 开启或关闭 Windows 功能 -> Hyper-V

### WSL 2
控制面板 -> 程序 -> 开启或关闭 Windows 功能 -> 适用于 Linux 的 Windows 子系统


1.WSL 2 is not installed
Install WSL using this PowerShell script (in an administrative PowerShell) and restart your computer before using Docker Desktop:
Enable-WindowsOptionalFeature -Online -FeatureName $("VirtualMachinePlatform", "Microsoft-Windows-Subsystem-Linux")


2.WSL 2 installation is incomplete.
The WSL 2 Linux kernel is now installed using a separate MSI updatepackage. 
Please click the link and follow the instructions to install the kernel update: https://aka.ms/ws12kernel.
Press Restart after installing the Linux kernel.


3.WSL 2更新驱动程序下载链接:https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi

4.升级版本为WSL 2:wsl.exe --set-default-version 2
