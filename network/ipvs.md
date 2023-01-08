# IPVS
> IP(Internet Protocol) Virtual Server

- LVS(Linux Virtual Server)
- 负载均衡(Load balance)

---



- DS:Director Server
- RS:Real Server
- VIP:Virtual IP
- DIP:Director Server IP
- RIP:Real Server IP
- CIP:Client IP

---
## DR模式
>Direct Routing



```sh
# --list --numeric
ipvsadm -ln
ipvsadm -ln --stats


# --clear
ipvsadm -C
# --zero
ipvsadm -Z
# --save
ipvsadm -S > /etc/sysconfig/ipvsadm
# --restore
ipvsadm -R< /etc/sysconfig/ipvsadm

systemctl restart ipvsadm
systemctl enable ipvsadm

```
---

```sh

# --add-service --tcp-service
# --scheduler
ipvsadm -At 192.168.10.183:80 -s rr
# --add-server
ipvsadm -at 192.168.10.183:80 -r 192.168.10.181:80 -g
ipvsadm -at 192.168.10.183:80 -r 192.168.10.182:80 -g





ip addr add 192.168.10.183/32 ens33 lo label lo:0
route add -host 192.168.10.183 ens33 lo

ifconfig ens33:0 192.168.10.183 broadcast 192.168.10.255 netmask 255.255.255.0 up
route add -host 192.168.10.183 dev ens33:0


vim/etc/sysctl.conf



sysctl -p

```


---


- /etc/sysctl.conf
```conf
net.ipv4.conf.all.arp_ignore = 1
net.ipv4.conf.all.arp_announce = 2
net.ipv4.conf.ens33.arp_ignore = 1
net.ipv4.conf.ens33.arp_announce = 2

net.ipv4.ip_forward = 1
net.ipv4.conf.all.send_redirects = 0
net.ipv4.conf.default.send_redirects = 0
net.ipv4.conf.ens33.send_redirects = 0
net.ipv4.conf.all.rp_filter = 0
```
```sh


```


---
## NAT模式
> Network Address Translation
---
## TUN模式



---
## ipvsadm

```sh
yum install -y ipvsadm

ipvsadm --help



```
---


---

## scheduler
> 调度算法

### 1.静态算法
- rr(Round Robin):轮询调度
- wrr(Weighted Round Robin):加权轮询调度
- sh(Source Hashing):源地址散列调度
- dh(Destination Hashing):目标地址散列调度

### 2.动态算法
- lc(Least Connections):最少连接
- wlc(Weighted Least Connections):加权最少连接
- lblc(Locality-Based LC):基于局部性的最少连接
- lblcr(LBLC with Replication):带复制的基于局部性的最少连接
- sed(Shortest Expection Delay):最少期望延迟
- nq(Never Queue):永不排队