# route
> 路由

---
## Linux
- route add|del
    - 主机host:192.168.10.183
    - 网段net:192.168.10.0
    - 设备dev:ens33,lo
    - 网关gw:192.168.10.1
    - 掩码netmask:255.255.255.0

```sh
route -n

# 默认网关
route add default gw 192.168.10.1

# 主机路由
route add -host 192.168.10.183 dev ens33
route add -host 192.168.10.183 gw 192.168.10.1
# 网段路由
route add -net 192.168.10.183 netmask 255.255.255.0 ens33
route add -net 192.168.10.0/32 gw 192.168.10.1


```
---
- Flags:标志
    - U:路由是活动的
    - H:目标是个主机
    - G:需要经过网关
    - R:恢复动态路由产生的表项
    - D:由路由的后台程序动态地安装
    - M:由路由的后台程序修改
    - !:拒绝路由
---
## Windows

```bat
route print

route add 192.168.10.0 mask 255.255.255.0 192.168.10.1
route delete 192.168.10.0 mask 255.255.255.0

```