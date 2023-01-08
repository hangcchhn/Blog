# nginx keyword
> 关键字

---
## location
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

location /test5 {
    return 200 $uri;
}

```


---
## rewrite
> 重定向

- rewrite status_code
-

| 优先级 | 匹配符 | 含义 |
| :- | :- | :- |
|  | last | 继续匹配新的规则 |
|  | break | 终止后续匹配规则 |
|  | redirect | 返回302临时重定向 |
|  | parmanent | 返回301永久重定向 |

---
## return
> 返回

- return status_code
- return status_code 'text'
- return /path
- return http://host:port/path


```nginx


return 200 $uri;


```

---
## error_page
> 错误页

```nginx

error_page 500 502 503 504  /error_page.html;

location = /error_page.html {
    # 错误页面
}

```