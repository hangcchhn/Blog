# nginx配置
> 配置项结束符;



```nginx


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

