




Python PATH:
python环境变量
C:\ProgramFiles\Python\;C:\ProgramFiles\Python\Scripts

Anaconda环境变量
C:\ProgramFiles\Anaconda;C:\ProgramFiles\Anaconda\Scripts


---


- `__pycache__`文件夹下`xxx.pyc`文件：编译
- `xxx/__init__.py`文件：模块





---



- 使用python运行py文件
```sh
# 绝对路径
cd absolute_directory
python file_name.py

# 先进入项目目录，再使用相对路径
absolute_directory = project_directory/relative_directory
cd project_directory
python relative_directory/file_name.py
```

- 默认会将file_name.py所在路径添加到sys.path中
    - 只会将absolute_directory添加到sys.path中
    - 不会将project_directory添加到sys.path中

---
- 文件即模块：`xxx.py -> import xxx`
```py
import xxx as aaa
from xxx import yyy as bbb
```
- 导入module都是从sys.path中检索py文件

- 当在py文件中要导入父级目录的module时，需要在py文件中将父级目录添加到sys.path中

```py
import os
import sys
sys.path.append(os.path.abspath(os.path.join(__file__, os.path.pardir, os.path.pardir)))
# 在导入项目中的模块之前添加
```
- 注意循环导入

---
- vscode执行py文件 -> python执行py文件

- pycharm默认会将project_directory添加到sys.path
```py
os.getcwd() -> project_directory

__file__ -> relative_directory/file_name.py
```

- 在PyCharm->Project中选择文件夹鼠标右键Mark Directory as->Sources Root
- 注意删除__init__.py文件，有__init__.py代表着module


- 清理缓存并重启PyCharm：File->Invalidate Caches/Restart

---
```
import pathlib
import importlib
```
---

## 协程
> coroutine




