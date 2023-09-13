
# nginx location
> 定位

- location % xxx { ... }

| 优先级 | 匹配符 | 含义 |
| :- | :- | :- |
| 1 | = | 精准匹配 |
| 2 | ^~ | 前缀匹配 |
| 3 | ~ | 区分大小写正则匹配 |
| 3 | *~ | 不区分大小写正则匹配 |
| 4 |   | 普通匹配，存储匹配项用于默认值。 |


```nginx

server {
    listen 81;
    server_name localhost;

    location = /test1 {
        return 200 $uri;
    }

    location ^~ /test2 {
        return 200 $uri;
    }

    location ~* /test3 {
        return 200 $uri;
    }

    location /test4 {
        return 200 $uri;
    }

}
```


