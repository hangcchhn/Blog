# keepalived


- 基于VRRP协议(Virtual Router Redundancy Protocol,虚拟路由冗余协议)
- 通过VIP实现LVS高可用HA(High Availability)


---
## 双机热备
- 虚拟IP

```sh
yum install -y openssl openssl-devel
yum install -y libnl libnl-devel


tar -zxvf keepalived-2.0.20.tar.gz
cd keepalived-2.0.20

./configure --prefix=/usr/local/keepalived
make && make install


mkdir -p /etc/keepalived/
vim /etc/keepalived/keepalived.conf

systemctl restart keepalived
systemctl status keepalived

# 查看日志
tail -10f /var/log/messages


ip addr
# inet 192.168.10.183/32 scope global ens33
# MASTER有，BACKUP没有，keepalived配置成功
```

- /etc/keepalived/keepalived.conf

---
- master
```conf
! Configuration File for keepalived

global_defs {
   router_id LVS_183
}

vrrp_script check_nginx {
	script ".sh"
	interval 2
	weight 2
}

vrrp_instance VI_181 {
    state MASTER
    interface ens33
    virtual_router_id 51
    priority 100
    advert_int 1
    authentication {
        auth_type PASS
        auth_pass 1111
    }

    virtual_ipaddress {
        192.168.10.183
    }

    track_script {
        check_nginx
    }
}

virtual_server 192.168.10.183 80 {
    delay_loop 6
    lb_algo rr
    lb_kind NAT
    persistence_timeout 50
    protocol TCP

    real_server 192.168.10.181 80 {
        weight 1
        TCP_CHECK {
            connect_port 80
            connect_timeout 3
            retry 3
            delay_before_retry 3
        }
    }

    real_server 192.168.10.182 80 {
        weight 1
        TCP_CHECK {
            connect_port 80
            connect_timeout 3
            retry 3
            delay_before_retry 3
        }
    }
}


```

---

```sh
ip addr
# inet 192.168.10.183/32 scope global ens33
# MASTER和BACKUP都有，防火墙配置问题

# 开启防火墙
systemctl start firewalld

# 开启 vrrp 和 icmp
iptables -A IN_public -p vrrp -j ACCEPT
iptables -A IN_public -p vrrp -j icmp

iptables -nL

```
---
