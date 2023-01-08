nginx http


## http
```nginx

http {

    upstream services{
        server localhost:8888;
        server localhost:9999;
    }

    server {
        listen 8899;
        server_name localhost;

        location / {
            proxy_pass http://services/;
            proxy_redirect off;
            proxy_set_header Host $http_host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        }

    }

}

```
