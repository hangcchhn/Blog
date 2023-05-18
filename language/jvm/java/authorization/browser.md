# 浏览器
> browser

- HTTP是无状态的

## Cookie

- 存储在客户端
- 请求头携带，不支持跨域

- 浏览器自动将响应头中的`Set-Cookie`字段转成请求头的`Cookie`字段

- 响应中`Set-Cookie`支持多个；请求中`Cookie`只支持一个，可以使用逗号;分隔多个



---
### 组成
- 域名domain：默认使用一级域名，可以访问其子域名，浏览器会校验域名
- 路径path
- Expires：浏览器关闭后没有了
- Max-Age
- Secure：只有在HTTPS协议下发送请求才带上
- HttpOnly：无法使用JS脚本拿到，Document.cookie属性、XMLHttpRequest对象和Request API


## Session

- 存储在服务端，SessionId存储在Cookie中
-

### 流程
1. 后端校验用户成功后将登录成功的存在Session，生成SessionId返回给前端
2. 此后前端发送业务请求都将SessionId放在cookie中一并发送到后端
3. 后端通过SessionId校验登录状态，登录成功的才能正常处理业务

---
### 实现
- JSESSIONID
-
- 后端集群部署访问不同机器导致Session失效问题
    - 使用Redis存储Session；
    - 使用Nginx配置ip_hash；



## Token

- 存储在客户端，存储在Local Storage中

- Header:Authorization

- 默认base64加密
- Token可以放在Cookie中


### 类型
- `access_token`：有效期短
- `refresh_token`：有效期长，
- 登录接口生成`refresh_token`，`refresh_token`用来获取`access_token`，`access_token`访问业务接口




- 成熟规则：[JWT](jwt.md)



---
## Storage



- Local Storage
- Session Storage
- Cache Storage




---