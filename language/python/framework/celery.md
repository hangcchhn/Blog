

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


- app.py
```py
# -*- coding: utf-8 -*-

from celery import Celery

import config

app = Celery('app')
app.config_from_object(config)

if __name__ == '__main__':
    app.start()
    pass

```

## 启动
- *nix:Linux,unix(macOS)
`celery -A app worker --loglevel=info`

- Windows
```bat
pip install eventlet
celery -A app worker -l info -P eventlet -E
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









