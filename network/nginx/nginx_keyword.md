# nginx keyword
> 关键字

---
## rewrite
> 重定向

- rewrite status_code;
- rewrite regex replacement flag;
-

| 优先级 | 匹配符 | 含义 |
| :- | :- | :- |
|  | last | 继续匹配新的规则 |
|  | break | 终止后续匹配规则 |
|  | redirect | 返回302临时重定向 |
|  | parmanent | 返回301永久重定向 |

```nginx
rewrite ^/(.*)  http://host:port/$1 permanent;
rewrite ^/$  http://host:port permanent;


```

---
## return
> 返回

- return status_code
- return status_code 'text'
- return /path
- return http://host:port/path


```nginx

return 200 'hello-world';
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