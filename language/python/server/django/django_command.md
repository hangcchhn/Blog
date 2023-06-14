# django命令



```sh
# 创建项目
django-admin startproject project_name

cd project_name
# 创建应用
# django-admin startapp app_name
python manage.py startapp app_name





python manage.py runserver host:port
curl http://127.0.0.1:8000

# http://127.0.0.1:8000/admin
python manage.py createsuperuser
python manage.py changepassword

```

- migrate迁移：将代码中的实体类转化为数据库中的表格
```sh
# 生成
python manage.py makemigrations app
# app/migrations/0001_initial.py
# 显示
python manage.py sqlmigrate app 001
# Create model
# 检查
python manage.py check
# 执行
python manage.py migrate

```


```sh
python manage.py shell
>>>

```