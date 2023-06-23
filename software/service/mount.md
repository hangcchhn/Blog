# mount



- /etc/fstab


- /etc/mtab


---

```sh

# export
showmount -e share_host
# --types
mount -t nfs share_host:share_path local_path
# --bind
mount -b src_path dest_path

# --lazy
umount -l local_path
# --mount --verbose
fuser -mv local_path
#  --kill
fuser -k local_path
```
