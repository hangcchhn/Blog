# django

- LTS：1.11，2.2，3.2，4.2




---

### 项目
> project

- ./manage.py

- ./project/settings.py
- ./project/urls.py


- ./project/wsgi.py：WSGI
- ./project/asgi.py：ASGI


---
## 应用
> application

- ./app/admin.py
- ./app/apps.py
- ./app/models.py
- ./app/tests.py
- ./app/views.py
- ./app/migrations/



---
- 模型
> model

```py

from django.db.models import Model, CharField

class Table(Model):
    column_name = CharField(max_length=128, default='默认值')
    pass

```



- 视图
> view

-  FBV(function-based views)基于函数的视图

-  CBV(class-based views)基于类的视图

- `XxxView.as_view()`调用`XxxView.dispatch(request)`返回`function`函数
    - `XxxView`类继承`View`类，`XxxView`类没有重写方法就调用`View`类的
    - 请求最终调用`XxxView`类中与当前请求方法的小写同名`request.method.lower()`的方法


- 模版
> template


## admin

- User
- Group

## auth

- `AuthenticationMiddleware`


## mail


## 分页

## 安全

## 信号