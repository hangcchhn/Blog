# Flask-RESTful

- `pip install flask-restful`

- restful.py
```py
# —*— coding: utf-8 -*-

from flask import Flask
from flask_restful import Api, Resource


class HelloWorld(Resource):
    def get(self):
        return {'hello': 'world'}


if __name__ == '__main__':
    app = Flask(__name__)
    api = Api(app)

    api.add_resource(HelloWorld, '/')

    app.debug = True
    app.run()

```