# tornado


- Application
- RequestHandler

- IOStream
- IOLoop:核心IO循环，
    - 封装了linux的epoll和unix的kqueue，是Tornado高性能的核心

## HTTP协议
- HTTPServer
- HTTPConnection
- HTTPRequest




---
## start command
> 启动命令
```sh

python xxx.py --help


```

### log configruation
> 日志配置


```
--log-file-max-size
--log-file-num-backups
--log-file-prefix
--log-rotate-interval
--log-rotate-mode
--log-rotate-interval
--log-rotate-when
--log-to-stderr
--logging=debug|info|warning|error|none

```
---
- server
```py
class IndexHandler(RequestHandler):

    def get(self):
        param = self.get_argument(name='param', default='')
        self.write(chunk=f'hello {param}')
        pass

    pass


if __name__ == '__main__':
    application = Application(handlers=[(r'/index', IndexHandler)])
    application.listen(options.port)
    IOLoop.instance().start()
    pass

```

- flask

```py


def tornado_flask():
    """使用tornado部署flask"""
    http_server = HTTPServer(WSGIContainer(app))
    http_server.listen(options.port)
    # 多进程不支持Windows
    http_server.start(num_processes=1)
    IOLoop.instance().start()
    pass

```