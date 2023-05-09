# JWT——Json Web Token


JWT的结构由三部分组成
分别是Header(头部)，Payload(载荷)、Signature(签名)，
之间使用.分隔连接


- Header
```json
{
    "alg":"",
    "typ":"",
}
```

- Payload
```json
{
    "sub":"",
    "userid":"",
    "openid":"",
}
```

- Signature
HMACSHA256(
  base64UrlEncode(header) + "." +
  base64UrlEncode(payload),
  secret)

---

```java
# 构建
Jwts.builder()
# 解析
Jwts.parser()
```