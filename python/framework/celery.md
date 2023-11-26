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

- worker.py

```py
from pkg.app import pkg_app

if __name__ == '__main__':
    pkg_app.worker_main(argv=['worker', '-l', 'info', '-P', 'threads', '-E'])
    pass


```


---


## 启动
- *nix:Linux,unix(macOS)
```sh
# 定时任务调度
celery -A pkg.app beat -l info
# celery worker --help
celery -A pkg.app worker -l info -E


```

- Windows系统支持不好，需要指定`-P, --pool`
```sh
celery -A pkg.app worker -l info -P threads -E

pip install eventlet
celery -A pkg.app worker -l info -P eventlet -E

pip install gevent
celery -A pkg.app worker -l info -P gevent -E

# -c, --concurrency N

# 心跳检测
--without-heartbeat
–-heartbeat-interval=10

# 清空任务队列
--purge, --discard

# 后台运行
celery multi start|restart|stop|stopwait w1 -A py_celery -l info

--pidfile=/var/run/celery/%n.pid
--logfile=/var/log/celery/%n%I.log


# linux process = perfork
celery -A pkg.app worker -l info -P prefork -E
#
--max-tasks-per-child=10
# 单位KB
--max-memory-per-child=1024

```

- 参数`--max-tasks-per-child=1 --max-memory-per-child=1024`只支持`--pool=prefork`模式


---

## 配置



```py


```



## 版本






---



## 插件

---
- flower
```sh
pip install flower

celery -A pkg.app flower
--address=0.0.0.0 --port=5555

```

---

```sh

pip install django-celery-results
pip install django_celery_beat

```


---
## 问题
- AttributeError: 'EntryPoints' object has no attribute 'get'
    - `pip install importlib-metadata==4.13.0`

- kombu.exceptions.OperationalError: [WinError 10061] 由于目标计算机积极拒绝，无法连接。
    - 没有使用`@pkg_app.task`，而是使用`@shared_task`，也要导入`from pkg.app import pkg_app`





