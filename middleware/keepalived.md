# keepalived



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