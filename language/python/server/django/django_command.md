# django命令



```sh
# 创建项目
django-admin startproject django_project

cd django_project
# 创建应用
# django-admin startapp app_server
python manage.py startapp app_server




# --noreload：关闭自动加载
python manage.py runserver --noreload host:port
curl http://127.0.0.1:8000



```

- migrate迁移：将代码中的实体类转化为数据库中的表格
```sh
# 修改实体类后重新生成数据库脚本
python manage.py makemigrations app_server
# ./migrations/0001_initial.py
# 显示脚本
python manage.py sqlmigrate app_server 001
# Create model
# 检查脚本
python manage.py check
# 执行脚本
python manage.py migrate




# 创建用户需要在数据库表格生成之后
python manage.py createsuperuser --username=admin --email=admin@django.com
python manage.py changepassword admin
# http://127.0.0.1:8000/admin

# rm -rf ./migrations/*
python manage.py migrate --fake
python manage.py migrate --fake app_server zero
python manage.py migrate --fake-inital


python manage.py makemigrations --empty app_server


```


```sh
python manage.py shell
>>>

```
- test
```py

from django.db.models import Model, CharField, IntegerField, DateField


class UserModel(Model):
    user_name = CharField(max_length=128,)
    mobile = CharField(max_length=11,)
    status = IntegerField()
    birthday = DateField(default='2000-01-01')

    pass
```