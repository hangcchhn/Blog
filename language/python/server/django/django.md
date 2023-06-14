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

- 模版
> template


## admin


