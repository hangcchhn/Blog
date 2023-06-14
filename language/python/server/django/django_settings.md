# settings.py

- `INSTALLED_APPS`
    - `django.contrib`包下的应用
    - `startapp`命令创建的应用

```py

INSTALLED_APPS = [
    'project.app.apps.config',# apps.py
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

class AppsConfig():
    name = 'project.app.apps.config'

```