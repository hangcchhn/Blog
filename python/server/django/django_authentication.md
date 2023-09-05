## Django Authentication


## app:auth

- `AuthenticationMiddleware`

- 密码md5加密


- 认证

-
```py
AUTHENTICATION_BACKENDS = ['django.contrib.auth.backends.ModelBackend']

# 继承django.contrib.auth.backends.BaseBackend
class CustomBackend(BaseBackend):

    def authenticate(self, request, **kwargs):
        return None

    def get_user(self, user_id):
        return None


```
---

## permissions

- `BasePermission`
- `AllowAny`
- `IsAuthenticated`
- `IsAdminUser`
- `IsAuthenticatedOrReadOnly`

## authentication


- 基类`BaseAuthentication`
```

```


- 基础`BasicAuthentication`
    - header:`Authorization Basic base64.encode(username:password)`
- 会话`SessionAuthentication`
    - form-data
    - pasword md5
- 令牌`TokenAuthentication`




## JSON Web Token

- `pip install djangorestframework-jwt`
- `JSONWebTokenAuthentication`

```py
payload = jwt_payload_handler(user)
token = jwt.encode_handler(payload)
```