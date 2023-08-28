
# Flask


- 轻量级，可扩展


- Jinja2模板引擎
- Werkzeug WSGI套件


---

## 装饰器
- 路由：`@app.route('/')`

- `@app.before_request`
- `@app.after_request`
- `@app.errorhandler(404)`


---

- `pip install flask`

- flask.py
```py
# —*— coding: utf-8 -*-

from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'flask'

app.debug = True
app.run()

```

- request.py
```py
from flask import request

header = request.headers.get("name")

value = request.args.get("key", "default")

key = request.form.get("key")

import json
data = json.loads(request.get_data(as_text=True))

```

---
## 表单

- `pip install WTForms`

---

## Jinja2模板引擎

- `return render_template('index.html',key='value')`
- index.html
```html
<!DOCTYPE html>
<html>
    <head>
        <title>key = {{ key }}</title>
    </head>
    <body>
        <h1>key = {{ key }}</h1>
    </body>
</html>

```

- `{{ key }}`获取变量的值
- `{%  %}`

---
## SQLAlchemy数据库持久化模块
- `pip install SQLAlchemy`

```py
from flask_sqlalchemy import SQLAlchemy

app.config['SQLALCHEMY_DATABASE_URI'] = ''
db = SQLAlchemy(app)

```

---







---
## 扩展模块

- APIFlask

- Flask-WTF
- Flask-Login
- Flask-Cache
- Flask-Mail
