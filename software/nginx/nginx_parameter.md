
# nginx参数
> 参数前缀$



| 参数 | 含义 |
| :- | :- |
| $args | 这个变量等于请求行中的参数。 |
| $binary_remote_addr | 远程地址的二进制表示 |
| $body_bytes_sent | 已发送的消息体字节数 |
| $content_length | 请求头中的Content-length字段 |
| $content_type | 请求头中的Content-Type字段 |
| $document_uri | 与$uri相同 |
| $document_root | 当前请求在root指令中指定的值 |
| $host | 请求主机头字段，否则为服务器名称 |
| $http_user_agent | 客户端agent信息 |`
| $http_cookie | 客户端cookie信息 |
| $http_referer | 引用地址 |
| $http_user_agent | 客户端代理信息 |
| $http_via | 最后一个访问服务器的Ip地址 |
| $http_x_forwarded_for | 相当于网络访问路径 |
| $query_string | 与$args相同 |
| $request_method | 客户端请求的动作，通常为GET或POST |
| $limit_rate | 这个变量可以限制连接速率 |
| $request_body_file | 客户端请求主体信息的临时文件名 |
| $remote_addr | 客户端的IP地址 |
| $remote_port | 客户端的端口 |
| $remote_user | 已经经过Auth Basic Module验证的用户名 |
| $request | 用户请求 |
| $request_body_file | 发往后端的本地文件名称 |
| $request_filename | 当前请求的文件路径，由root或alias指令与URI |请| 求生成 |
| $request_method | 请求的方法，比如 GET 、POST 等 |
| $request_uri | 请求的URI，带参数 |
| $query_string | 与$args相同 |
| $scheme | HTTP方法（如http，https） |
| $server_protocol | 请求使用的协议，通常是HTTP/1.0或HTTP/1.1 |
| $server_addr | 服务器地址，在完成一次系统调用后可以确定这个值 |
| $server_name | 服务器名称 |
| $server_port | 请求到达服务器的端口号 |
| $request_uri | 包含请求参数的原始URI，不包含主机名，如 /foo/bar.php |?| arg=baz |
| $uri | 不带请求参数的当前URI，$uri不包含主机名，如 /foo/bar.html
