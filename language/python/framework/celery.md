

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
- `pip install celery`


- py_celery.py
```py


```


- *nix:Linux,unix(macOS)
`celery -A py_celery worker  --loglevel=info`



- Windows
```bat
pip install eventlet
celery -A py_celery worker -l info -P eventlet -E
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









