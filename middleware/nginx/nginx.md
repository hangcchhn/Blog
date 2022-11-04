# nginx



- http
- upstream
    - server
- server
    - listen
    - server_name
    - location


---

- IPv4:xxx.xxx.xxx.xxx:xxxx
- IPv6:[xxxx:xxxx:xxxx:xxxx]:xxxx




---
## upstream

### server host:port;
> 默认轮训(round robin)

- 权重
    - weight=1


- 失败超时处理策略
    - fail_timeout=10ms
    - max_fails=10
    - fail_time=10s

- 备用
    - backup
- 停机
    - down

```nginx
upstream services{
    server localhost:8888 weight=1;
    server localhost:9999 weight=1;
    ip_hash;
}

```


### ip_hash;
按客户端ip分配访问服务器ip方式，同一个客户端ip固定访问同一台服务器ip，解决session回话不能跨服务器的问题


### fair;

### hash&hash_method
server语句不能再配置weight等参数

```nginx


upstream services {
    hash $request_uri;
    hash_method crc32;
    server localhost:8888;
    server localhost:8888;
}

```


---
##

```nginx

# 不带斜杠：可以匹配/xxx/yyy和/xxxyyy两种
location /xxx {

}

# 带斜杠：只能匹配/xxx/yyy不能匹配/xxxyyy
location /xxx/ {
    # 不带斜杠：请求路径/xxx/yyy；转发路径/zzz/xxx/yyy
    proxy_pass http://services/zzz;
}

location /xxx/ {
    #  带斜杠：请求路径/xxx/yyy；转发路径/zzz/yyy
    proxy_pass http://services/zzz/;
}




```

---
# log

- log level
    - main
    - notice
    - debug
```nginx

open_log_file_cache off;

access_log ./logs/access.log main;

log_format  main '';


log_format proxy '';


```




---

# file system

```nginx


# 打开自动索引（打开目录浏览功能）
autoindex on;

# 首页
index xxx.html;

# 访问本地路径：
location /folder { # 只能访问指定目录（要求父文件夹下必须有这个目录）
    # 配置父文件夹
    root /parent;

}

# 推荐配置方式：
location /local { # 配置链接名称（配置访问前缀）
    # 配置别名(配置访问路径)
    alias /root;
}


```

