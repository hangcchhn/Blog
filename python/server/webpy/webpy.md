# web.py

- simple(简单)
- powerful(强大)


- python2:`pip2 install web.py==0.51`
- python3:`pip3 install web.py`

- linux
    - centos 6.10
    - python 2.7.14
- windows
    - windows xp
    - python 2.7.18

---
## flup

python2中使用flup最新版本1.0.3会出现no module name _dummy_thread错误
- flup==1.0.2只支持的是python2:`pip2 install flup==1.0.2`
- flup==1.0.3只支持的是python3:`pip3 install flup==1.0.3`

---
- main.py
```py
import web

urls = (
    '/(.*)', 'index'
)
app = web.application(urls, globals())

class index:
    def GET(self, name):
        if not name:
            name = 'world'
        return 'hello,' + name + '!'
    pass

if __name__ == "__main__":
    app.run()

```

```sh
python main.py port

curl http://localhost:port

```
- 如果接口使用REST风格返回JSON数据，可以使用json模块转换object数据

---

## 使用html文件作为template渲染页面

- 在templates文件夹下创建index.html文件，内容如下：
```html
$def with (content)
<html>
<body>
<p>识别结果：$content</p>
</body>
</html>
```

```py
import web
urls = (
    '/templates/(.*)', 'templates'
)
app = web.application(urls, globals())
render = web.template.render('templates/')
class templates:
    def GET(self, text):
        print('input:' + text)
        return render.index(content=text)
if __name__ == "__main__":
    app.run()
```
---

- 处理静态资源文件：

```py
import web
urls = (
    '/templates/(.*)', 'templates',
    '/(js|css|images)/(.*)', 'static'
)
app = web.application(urls, globals())
render = web.template.render('templates/')
class templates:
    def GET(self, text):
        print('input:' + text)
        return render.hello(content=text)

class static:
    def GET(self, media, file):
        try:
            f = open(media+'/'+file, 'rb')
            return f.read()
        except:
            return ''

if __name__ == "__main__":
    app.run()

```

---
- 访问数据库

```py
dburl="dbn://user:pw@host:port/db"

db = web.database(dburl="mysql://root:chench@127.0.0.1:3306/mysql")
db = web.database(dbn="mysql", host="127.0.0.1", port=3306, db="mysql", user="root", pw="chench")
print(list(db.select("`user`")))
print(list(db.query("select * from user")))
```












