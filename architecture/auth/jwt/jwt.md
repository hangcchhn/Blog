# JWT
> JSON Web Token

- https://jwt.io/

- 开发行业标准方案(RFC 7519)
- JWT由Header(头部)，Payload(载荷)、Signature(签名)三部分组成
- 前两部分使用base64加密后，三部分使用"."连接
    - base64(Header).base64(Payload).Signature




## Header

- JOSE Header
    - Javascript Object Signature Encryption

- 头部：类型，签名所用的加密算法

```json
{
    "alg":"HS256",
    "typ":"JWT",
}
```
- alg(algorithm):
    - HMAC
    - SHA256
    - RSA.
- typ(type)
    - JWT
- cty(Content Type)

---
## Payload
- 载荷：使用JSON格式存储数据，

```json
{
    "sub":"",
    "userid":"",
    "openid":"",
}
```


### 声明：标准声明，公共声明和私有声明
- claim
    - registered
    - public
    - private

- registered
    - iss:签发者(issuer)
    - sub:用户(subject)
    - aud:接收(audience)
    - exp:过期时间(expiration)
    - nbf:截至时间
    - iat:签发时间
    - jti:唯一身份标识

---
## Signature

- 签名：将Header和Payload使用base64加密后用"."连接，再使用Header中加密算法进行加盐secret组合加密得到，保证信息安全可靠


- `HMACSHA256(base64UrlEncode(header) + "." + base64UrlEncode(payload), secret)`

---
## 流程

- 用户认证成功后，将用户信息放在负载中生成JWT返回给前端
- 前端将JWT校验后保存在Local Storage中，退出登录前删除
- 发送业务请求时将JWT放在请求头的Authorization中传给后端



---


- JWE(JSON Web Encryption)
- JWK(JSON Web Key)
- JWA(JSON Web Algorithm)
- JWS(JSON Web Signature)