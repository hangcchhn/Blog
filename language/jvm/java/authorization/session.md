

# Session

- 服务端


---
1. 后端校验用户成功后将登录成功的存在Session，生成SessionId返回给前端
2. 此后前端发送业务请求都将SessionId放在cookie中一并发送到后端
3. 后端通过SessionId校验登录状态，登录成功的才能正常处理业务







