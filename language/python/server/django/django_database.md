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
        'ENGINE': '数据库驱动，已支持数据类型如下',
        'NAME': '数据库名称',
        'USER': '用户名',
        'PASSWORD': '密码',
        'HOST': '数据库服务器ip，本地可以使用localhost，127.0.0.1',
        'PORT': '端口，默认为3306',
    }
}
```
- 已支持的数据库类型：mysql、sqlite3、oracle
