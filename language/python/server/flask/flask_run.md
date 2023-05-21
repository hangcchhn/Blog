# flask run

- flask.py
```py
# —*— coding: utf-8 -*-
#! /usr/bin/env python
from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'flask'

app.debug = True
# 启动服务：进程阻塞，后面代码不会执行
app.run(host='0.0.0.0', port=8000)

if __name__ == '__main__':
    # 此句没有执行
    print('hello flask')
    pass


```


### 使用python执行
- `python app.py`启动可以加载`if __name__ == '__main__':`中代码

可以在代码中设置host和port
app.run(host='0.0.0.0',port=8000)


---
### 使用flask执行

- `flask run`启动无法加载`if __name__ == '__main__':`中代码

- `flask run`启动flask服务不需要执行`app.run()`代码
修改服务启动监听端口

- linux
```sh
export FLASK_APP=app.py
export FLASK_ENV=development
flask run
# python -m flask run
```
- 单行命令
```sh
env FLASK_APP=app.py FLASK_ENV=development \
flask run -h 0.0.0.0 -p 8000
```


---
- windows
```bat
set FLASK_APP=app.py
set FLASK_ENV=production
flask run -h 0.0.0.0 -p 8000
```



