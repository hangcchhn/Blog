# nginx配置
> 配置项结束符;


```nginx

# 启动用户和用户组
user nginx;
group nginx;
# 进程数
worker_processes auto;

error_log logs/error.log notice;
pid logs/nginx.pid;


events {
    worker_connections  1024;
}



```

---

配置跨域：
```nginx
add_header Access-Control-Allow-Origin *;
add_header Access-Control-Allow-Headers X-Requested-With;
add_header Access-Control-Allow-Methods GET,POST,OPTIONS;

````
