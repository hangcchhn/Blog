
# nginx ssl
> https

- 编译
```sh
./configure --prefix=/usr/local/nginx \
--with-openssl=/chench/openssl \
--with-http_ssl_module

```
- 配置

- /usr/local/nginx/conf/ssl/xxx.cert,xxx.key

```nginx

listen      443 ssl;
server_name xxx;

# ssl on;

ssl_certificate   ssl/xxx.cert;
ssl_certificate_key  ssl/xxx.key;

ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
ssl_prefer_server_ciphers on;

ssl_session_cache    builtin:10m shared:SSL:1m;
ssl_session_timeout  5m;

ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:ECDHE:ECDH:AES:HIGH:!NULL:!aNULL:!MD5:!ADH:!RC4;

```

---
- 禁止IP访问HTTPS
```nginx

server {
    listen      443 ssl default;
    server_name _;

    ssl_certificate     ssl/xxx.cert;
    ssl_certificate_key ssl/xxx.key;

    ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
    ssl_prefer_server_ciphers on;

    ssl_session_cache    builtin:5m shared:SSL:5m;
    ssl_session_timeout  5m;

    ssl_ciphers HIGH:!RC4:!MD5:!aNULL:!eNULL:!NULL:!DH:!EDH:!EXP:+MEDIUM;

    return 403;
}

```
---

```sh

openssl s_client -connect server_name:443


```

---
- 访问跳过https的ssl证书校验
```sh
curl -k "https://127.0.0.1:443"

wget --no-check-certificate "https://127.0.0.1:443"
```
---
## nginx https
- 服务端https -> 代理端http

```nginx
    upstream nginxhttps
    {
        server localhost:8808 weight=5 max_fails=5 fail_timeout=10s;
    }


    # HTTPS server

    server {
        listen       11443 ssl;
        server_name  localhost;

        ssl_certificate      ssl/server/server.crt;
        ssl_certificate_key  ssl/server/server.key;

        ssl_session_cache    shared:SSL:1m;
        ssl_session_timeout  5m;

        ssl_ciphers  HIGH:!aNULL:!MD5;
        ssl_prefer_server_ciphers  on;

        location /http/api/ {
            proxy_pass http://nginxhttps;
            proxy_set_header Host	$host:11443;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        }

        location / {
            root   html;
            index  index.html index.htm;
        }
    }
```
- 服务端https -> 代理端https

```nginx
    server {
        listen       12443 ssl;
        server_name  httpshost;

        ssl_certificate      ssl/server/server.crt;
        ssl_certificate_key  ssl/server/server.key;

        ssl_session_cache    shared:SSL:1m;
        ssl_session_timeout  5m;

        ssl_ciphers  HIGH:!aNULL:!MD5;
        ssl_prefer_server_ciphers  on;


        location /test/ {
            proxy_pass https://localhost:8899;
            proxy_set_header Host	$host:11443;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;


            #proxy_ssl_certificate      ssl/rootCA.pem;
            #proxy_ssl_certificate_key  ssl/rootCA.key;

            proxy_ssl_certificate      ssl/client/client.crt;
            proxy_ssl_certificate_key  ssl/client/client.key;

            proxy_ssl_protocols           TLSv1 TLSv1.1 TLSv1.2;
            proxy_ssl_ciphers             HIGH:!aNULL:!MD5;

            proxy_ssl_trusted_certificate ssl/server/server.crt;
            proxy_ssl_verify        on;
            proxy_ssl_verify_depth  2;
            proxy_ssl_session_reuse on;


        }

        location / {
            root   html;
            index  index.html index.htm;
        }
    }

```
---
## jmeter
```
bin/jmeter -Djavax.net.ssl.trustStore=client.store -Djavax.net.ssl.keyStorePassword=123456 -Djavax.net.ssl.keyStore=client.p12
```

## postman
1. Settings->Genetar->SSL Certificate Verification = OFF

2. Settings->Certificates->Client Certificates->Add Certificate
    - host:port
    - crt
    - key
    - pfx
    - password
