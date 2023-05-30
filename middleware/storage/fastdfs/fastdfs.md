# FastDFS


---

- 配置文件路径：/etc/fdfs/
- 执行文件路径：/usr/bin/fdfs_*




```sh
# 测试上传
fdfs_test /etc/fdfs/client.conf upload /root/fdfs/fastdfs/1.jpg


# 上传文件
fdfs_upload_file /etc/fdfs/client.conf /root/fdfs/fastdfs/1.jpg

# 下载文件
fdfs_download_file /etc/fdfs/client.conf

# 删除storage节点
fdfs_monitor /etc/fdfs/client.conf delete group0 192.168.10.168




fdfs_monitor /etc/fdfs/client.conf
fdfs_monitor /etc/fdfs/storage.conf

ps aux |grep fdfs

killall fdfs_trackerd
killall fdfs_storaged

vim /etc/fdfs/tracker.conf
vim /etc/fdfs/storage.conf

/usr/bin/fdfs_trackerd /etc/fdfs/tracker.conf restart
/usr/bin/fdfs_storaged /etc/fdfs/storage.conf restart

cat /root/fdfs/fastdfs/tracker/logs/trackerd.log
cat /root/fdfs/fastdfs/storage/logs/storaged.log

vim /etc/fdfs/client.conf

```
---
```sh
vim /etc/fdfs/mod_fastdfs.conf
ps aux |grep nginx

killall nginx
/usr/local/nginx/nginx-1.15.1/sbin/nginx -c /usr/local/nginx/nginx-1.15.1/conf/nginx.conf

vim /usr/local/nginx/nginx-1.15.1/conf/nginx.conf
/usr/local/nginx/nginx-1.15.1/sbin/nginx -s reload

cat /usr/local/nginx/nginx-1.15.1/logs/error.log
cat /usr/local/nginx/nginx-1.15.1/logs/access.log
```


---
```sh
vim /etc/fdfs/storage1.conf
vim /etc/fdfs/storage2.conf

/usr/bin/fdfs_storaged /etc/fdfs/storage1.conf restart
/usr/bin/fdfs_storaged /etc/fdfs/storage2.conf restart

fdfs_monitor /etc/fdfs/storage1.conf
fdfs_monitor /etc/fdfs/storage2.conf

cat /root/fdfs/fastdfs/storage1/logs/storaged.log
cat /root/fdfs/fastdfs/storage2/logs/storaged.log

```





---

- client.conf:

```ini
# fdfs_trackerd
tracker_server=192.168.10.153:22122

# nginx_fastdfs
http.server_port=8998


base_path=/root/fdfs/fastdfs/

storage_ids_filename=storage_ids.conf
```

- storage_ids.conf:
```ini
# <id>  <group_name>  <ip_or_hostname>
100001   group0  192.168.10.153
#100002   group1  192.168.10.153

```

- mod_fastdfs.conf:
```sh
# fdfs_storaged
storage_server_port=23000

# fdfs_trackerd
tracker_server=192.168.10.153:22122

# nginx_fastdfs
http.server_port=8998


# 下标从0开始，总数从1开始
store_path_count=1
store_path0=/root/fastdfs/storage

# 多个group使用/分隔
# group_name
group_name=group0/group1

# 下标从0开始，总数从0开始
# 下标从1开始，总数从1开始
# 总数0表示只有1个group
group_count = 1

[group0]
group_name=group0
storage_server_port=23000
store_path_count=1
store_path0=/root/fdfs/fastdfs/storage

[group1]
group_name=group1
storage_server_port=23001
store_path_count=1
store_path0=/root/fdfs/fastdfs/storage1

```
- nginx.conf:
```nginx

location ~ /group0/M00/ {
    root /root/fdfs/fastdfs/storage/data;
    ngx_fastdfs_module;
}

location ~ /group1/M00/ {
    root /root/fdfs/fastdfs/storage1/data;
    ngx_fastdfs_module;
}

location ~ /group([0-9])/M00/ {
    root /root/fastdfs/storage/data;
    ngx_fastdfs_module;
}

```






