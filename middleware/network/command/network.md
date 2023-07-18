# network
> 网络


- 以太网Ethernet
- 无线局域网WLAN


- 网络适配器Network Adapter
    - 硬件设备，俗称网卡，类似显卡、声卡

- 网桥
    - 两个端口
- 交换机
    - 多端口的网桥

- tun/tap
- veth pair
---
## 静态IP



### CentOS


-
- CentOS 6.10
- ifcfg-eth0
```
BOOTPROTO=dhcp|static
ONBOOT=yes
IPADDR=192.168.10.153
NETMASK=255.255.255.0
GATEWAY=192.168.10.2
DNS1=8.8.8.8
DNS2=114.114.114.114

```
- CentOS 7.x
- ifcfg-ens33
```ini
TYPE="Ethernet"
PROXY_METHOD="none"
BROWSER_ONLY="no"
BOOTPROTO="static"
DEFROUTE="yes"
IPV4_FAILURE_FATAL="no"
IPV6INIT="yes"
IPV6_AUTOCONF="yes"
IPV6_DEFROUTE="yes"
IPV6_FAILURE_FATAL="no"
IPV6_ADDR_GEN_MODE="stable-privacy"
NAME="ens33"
UUID="17349290-84bc-4602-b278-27bef2a71883"
DEVICE="ens33"
ONBOOT="yes"
IPADDR=192.168.10.201
NETMASK=255.255.255.0
GATEWAY=192.168.10.2
DNS1=8.8.8.8
DNS2=114.114.114.114

```

---

```sh
# ens33
vim /etc/sysconfig/network-scripts/ifcfg-ens33

# reboot
systemctl restart network
```



### Ubuntu