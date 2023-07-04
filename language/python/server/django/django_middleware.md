# 中间件
> middleware


---

- settings.py
- 中间件配置注意顺序
```py
MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]
```

---
- `SessionMiddleware`
    - `request.session`
- `AuthenticationMiddleware`
    - `request.user`

---


## CSRF

- 中间件：`django.middleware.csrf.CsrfViewMiddleware`
- 装饰器：`from django.views.decorators.csrf import csrf_exempt`

- 响应头：`Set-Cookie: "csrftoken=xxx;"`
- 请求头：`X-CSRFTOKEN: "xxx"`




---