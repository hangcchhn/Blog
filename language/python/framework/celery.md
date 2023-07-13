

# celery

- 分布式
- 任务调度
- 消息队列

---
## 组件

- Celery Beat：任务调度
- Celery Worker：
- Broker：代理
- Producer：
- Result Backend：


---
- 安装：`pip install celery`


- pkg/app.py
```py
from celery import Celery
import config

pkg_app = Celery('pkg-app')
pkg_app.config_from_object(config)

```
- 命令参数`-A pkg.app`：指定导包路径

---
- tasks.py
```py
@shared_task(name='task0', bind=True, serializer='json')
def task0(self, a: int, b: int):
    print('task0')
    self.update_state(state="PROGRESS", meta={'progress': 50})
    pass

```

- `bind=True`和`self`配合使用


## 启动
- *nix:Linux,unix(macOS)
```sh
# 定时任务调度
celery -A pkg.app beat l info
#
celery -A pkg.app worker -l info
```

- Windows
```bat
pip install eventlet
celery -A pkg.app worker -l info -P eventlet -E

pip install gevent
celery -A pkg.app worker -l info -P gevent

```

---

# 配置文件



---
```sh
# 启动职程
celery worker --help

```










---

后台运行
celery multi start|restart|stop|stopwait w1 -A py_celery -l info

--pidfile=/var/run/celery/%n.pid
--logfile=/var/log/celery/%n%I.log



---
- flower
```sh
pip install flower

celery -A pkg.app flower
--address=0.0.0.0 --port=5555

```


---

- AttributeError: 'EntryPoints' object has no attribute 'get'
    - `pip install importlib-metadata==4.13.0`







