# keepalived


- 基于VRRP协议(Virtual Router Redundancy Protocol,虚拟路由冗余协议)

- 双机热备HA


---
```sh
tar -zxvf keepalived-1.2.24.tar.gz

cd keepalived-1.2.24

./configure --prefix=/usr/local/keepalived



mv -f etc/keepalived/ /etc/
mv -f etc/rc.d/init.d/keepalived /etc/rc.d/init.d/
mv -f etc/sysconfig/keepalived /etc/sysconfig/

mv -f sbin/keepalived /usr/sbin/

modprobe ip_vs

modprobe ip_vs_wrr

```

- /etc/keepalived/keepalived.conf
- `state MASTER|BACKUP`
```conf
# 全局定义
global_defs {
   #路由ID,当前安装keepalived的节点主机标识符，需保证全局唯一
   router_id LVS_01
}

#基于vrrp协议的实例，可理解为一个服务器节点
vrrp_instance VI_1 {
    #表示状态为主节点MASTER还是备用机BACKUP
    state MASTER
    #当前示例绑定的网卡，根据ip addr查出来的网卡
    interface eth0
    #虚拟路由id，保证主备节点该值一致
    virtual_router_id 51
    #优先级/权重，master权重一般高于backup，在master挂掉后谁的优先级高，谁就能成为master
    priority 100
    #主备之间同步检查的时间间隔（心跳），默认为1s
    advert_int 1
    #认证授权的密码，防止非法节点进入，主备需要一致
    authentication {
        auth_type PASS
        auth_pass 1111
    }

    #虚拟IP，可以有多个，根据自己实际情况修改
    virtual_ipaddress {
        192.168.5.66
    }

}
```

```diff

```