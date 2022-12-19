# 磁盘扩容
>

- CentOS 7.x
- VMware 10G

---


- `fdisk /dev/sda`

![](./disk_extend/fdisk_help.jpg)

- `p -> n -> enter -> enter -> p -> w`

![](./disk_extend/fdisk_command.jpg)

---

![](./disk_extend/vgdisplay_before.jpg)
-
- `pvcreate /dev/sda3`
- `vgextend centos /dev/sda3`

![](./disk_extend/create_extend.jpg)
- PV(Physical Volume)
- VG(Volume Group)


![](./disk_extend/pvdisplay.jpg)


---


- `Free  PE / Size       2559 / <10.00 GiB`
- `lvextend -l+2559 /dev/mapper/centos-root`
![](./disk_extend/lvextend.jpg)

![](./disk_extend/vgdisplay_after.jpg)

---
- 文件系统格式
![](./disk_extend/fstab.jpg)

- xfs_growfs /dev/mapper/centos-root

![](./disk_extend/xfs_growfs.jpg)
`
- CentOS 6.x:`resize2fs /dev/mapper/centos-root`



