
# Fast API

- Python 3.6+

```
pip install fastapi
pip install uvicorn

```


- Starlette
- Pydantic
    - data validation library

---

- main.py
```py
# —*— coding: utf-8 -*-
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello": "World"}


```
---

```sh
# 启动命令
uvicorn main:app --reload
# 默认运行
127.0.0.1:8000

# 接口文档
swagger:http://127.0.0.1:8000/docs


# 远程访问：设置主机和端口
uvicorn main:app --reload --host 0.0.0.0 --port 8080
```