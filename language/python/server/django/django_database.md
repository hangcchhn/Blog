#  数据库

## Django ORM

- 对象关系映射ORM(Object Relational Mapping)
    - 数据模型和数据库表结构
    - 解耦：高类聚，低耦合
    - 不依赖特定数据库
- 流程
    1. 将python代码的对象类转化为sql表结构
    2. 将对象操作转化为表格操作
    3. 将表格操作转化为对象操作



## 数据库配置
- settings.py
```py
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}
DATABASES = {
    'default': {
        # pip install mysqlclient
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'django_project',
        'USER': 'root',
        'PASSWORD': 'chench',
        'HOST': '127.0.0.1',
        'PORT': '3306',
    }
}
```

- models.py
```py
from django.db import models

class PersonModel(models.Model):
    name = models.CharField(max_length=128,)
    status = models.IntegerField()
    birthday = models.DateField(default='2000-01-01')

    pass

```


- admin.py
```py
from django.contrib import admin

from app_module.models import PersonModel

admin.site.register(PersonModel)

```