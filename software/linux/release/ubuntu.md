# Ubuntu




---
Ubuntu系统重启/etc/profile环境变量不生效

- ~/.profile
```sh
# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi
```


---
```sh
export JAVA_HOME=/opt/java/jdk-11.0.9
export PATH=$JAVA_HOME/bin:$PATH

#export SCALA_HOME=/usr/share/scala-2.11
#export PATH=$SCALA_HOME/bin:$PATH

#export HADOOP_HOME=/opt/hadoop
#export PATH=$HADOOP_HOME/bin:$PATH
```

---

- Ubuntu Pro

```sh
pro attach C1V3QbcGdqMPsWaacx1tNPiA1kGed
pro detach

pro status --all
pro enable xxx

pro fix xxx

apt install ubuntu-advantage-tools
```
---


网络配置

/etc/network/interfaces
```
iface ens33 inet staticll
address 192.168.10.163
netmask 255.255.255.0
gateway 192.168.10.2
```
ifconfig ens33 192.168.10.178 netmask 255.255.255.0

route add default gw 192.168.10.2


---

- ubuntu 20.04
```sh
service network-manager stop
rm /var/lib/NetworkManager/NetworkManager.state
service network-manager start
vim /etc/NetworkManager/NetworkManager.conf

[ifupdown]
managed=true

service network-manager restart
```
---

```sh
# Ubuntu <= 16.04
apt install unity-tweak-tool

# Ubuntu >= 18.04
apt install gnome-tweaks

```



---
- Ubuntu 22.04:AppImages require FUSE to run.
```sh
sudo add-apt-repository universe
sudo apt install libfuse2

```
---







