# HTTP
>HyperText Transfer Protocol

- 超文本传输协议
- 基于TCP协议的应用层协议

- 无状态协议







---
## HTTP 1.1
- 文本格式
- HTTP报文行结束符`CRLF`

## HTTP/2
- 二进制分帧层

- 单个连接可以承载多个双向通讯的数据流，消息由帧()组成，
- 使用二进制格式传输数据
- 同一连接多个并行请求，支持多路复用
- 双向全双工通信
- 内置流式处理

- 头部压缩HPACK
- 服务器推送(Server Push,Cache Push)

---
- 同域名下所有通信都在单个连接上完成

## HTTP/3

- 基于QUIC，基于UDP
---

## HTTP请求报文

- 请求行:请求方法+请求路径+协议版本
- 请求头
- 正文


---
### HTTP请求方法
- GET
- POST
- PUT
- DELETE

## 请求头
- `Connection: Keep-Alive`:长连接
- `Content-Type`

---
## HTTP响应报文

- 状态行:协议版本+响应状态码+响应状态码短语
- 响应头
- 正文

---
## HTTP响应状态码
- 1XX:通知信息
- 2XX:成功
- 3XX:重定向
- 4XX:客户端的差错
- 5XX:服务端的差错

---
## HTTP响应状态码短语
| 状态码 | 状态码短语 | 状态码描述 |
| :-: | :- | :- |
| 100 |  |  |
| 101 |  |  |
| 200 | OK |  |
| 201 | Created |  |
| 202 | Accepted |  |
| 203 |  |  |
| 204 | No Content |  |
| 205 | Reset Content |  |
| 206 | Partial Content |  |
| 300 | Multiple Choices |  |
| 301 | Moved Permanently |  |
| 302 | Found |  |
| 303 |  |  |
| 304 | Not Modified |  |
| 305 | Use Proxy |  |
| 306 |  |  |
| 307 | Temporary Redirect |  |
| 400 | Bad Request |  |
| 401 | Unauthorized |  |
| 402 |  |  |
| 403 | Forbidden |  |
| 404 | Not Found |  |
| 405 | Method Not Found |  |
| 406 | Not Acceptable |  |
| 407 |  |  |
| 500 | Internal Server Error |  |
| 501 | Not Implemented |  |
| 502 | Bad Gateway |  |
| 503 | Server Unavailable |  |
| 504 | Gateway Timeout |  |
| 505 |  |  |


