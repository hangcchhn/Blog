# settings.py

- 参考`django.conf.global_settings.py`
---

- `INSTALLED_APPS`
    - `django.contrib`包下的应用
    - `startapp`命令创建的应用

```py

INSTALLED_APPS = [
    'app_module',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
]

```


- ./app/apps.py

```py

from django.apps.AppConfig

class AppModuleConfig():
    name = 'app_module'

```