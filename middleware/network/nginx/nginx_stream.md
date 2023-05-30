# nginx stream
> TCP & UDP

##

- complier
```sh

./configure --prefix=/usr/local/nginx --with-stream
make && make install


```


- stream

```nginx

stream {

    upstream tcp {
        server 127.0.0.1:8001;
    }

    server {
        listen 8000;
        proxy_pass tcp;
    }

}


```



