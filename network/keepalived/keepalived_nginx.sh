# keepalived nginx


- /etc/keepalived/keepalived.conf

```conf

vrrp_script check_nginx {
	script "/opt/keepalived/check_nginx.sh"
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

```

---
- /opt/keepalived/check_nginx.sh

```sh
#!/bin/bash
ps_wl = `ps -C nginx --no-header |wc -l`

if [ $ps_wl -eq "0" ]; then
  /usr/bin/systemctl stop keepalived
fi

```