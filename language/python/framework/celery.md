

# celery



- 分布式
- 任务调度
- 消息队列



- `pip install celery`


py_celery.py


linux|mac
celery -A py_celery worker  --loglevel=info



windows

pip install eventlet
celery -A py_celery worker -l info -P eventlet -E


---

# 配置文件



---

启动职程
celery worker --help












---

后台运行
celery multi start|restart|stop|stopwait w1 -A py_celery -l info

--pidfile=/var/run/celery/%n.pid
--logfile=/var/log/celery/%n%I.log









