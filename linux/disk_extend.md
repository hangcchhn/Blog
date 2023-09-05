# 磁盘扩容
> disk extend

- CentOS 7.x
- VMware 10G

---


- `fdisk /dev/sda`

![](./disk_extend/fdisk_help.jpg)

- `p -> n -> p -> enter -> enter -> enter -> p -> w`

![](./disk_extend/fdisk_command.jpg)

- `reboot`

---

![](./disk_extend/vgdisplay_before.jpg)
![](./disk_extend/pvdisplay_before.jpg)

- `pvcreate /dev/sda3`
- `vgextend centos /dev/sda3`

![](./disk_extend/create_extend.jpg)

- PV(Physical Volume)
- VG(Volume Group)

![](./disk_extend/vgdisplay_after.jpg)

![](./disk_extend/pvdisplay_after.jpg)


---

- `lvextend -l+2559 /dev/mapper/centos-root`

![](./disk_extend/lvextend.jpg)



---
- 查看文件系统格式:`cat /etc/fstab | grep centos-root`

![](./disk_extend/fstab.jpg)

- CentOS 7.x:`xfs_growfs /dev/mapper/centos-root`

![](./disk_extend/xfs_growfs.jpg)

- CentOS 6.x:`resize2fs /dev/mapper/centos-root`



