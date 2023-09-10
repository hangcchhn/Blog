# nginx proxy



---
## 代理
>proxy

```nginx

proxy_pass          http://127.0.0.1:8080;
proxy_set_header    X-Real-IP $remote_addr;
proxy_set_header    X-Forwarded-For $proxy_add_x_forwarded_for;
proxy_set_header    Host $http_host;
proxy_set_header    X-NginX-Proxy true;
proxy_redirect      off;
```

---
## 超时
> timeout

```nginx

proxy_connect_timeout 60;
proxy_timeout ;
```