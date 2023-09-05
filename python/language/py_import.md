# 导入


- 完全限定：全限定名
- `sys.modules['module']`

- `sys.path`
    - 第一个是空字符串`''`，代表当前工作目录、脚本所在目录
    - 环境变量`PYTHONPATH`

## 环境变量
- Python环境变量：
    - C:\ProgramFiles\Python\
    - C:\ProgramFiles\Python\Scripts

- Anaconda环境变量：
    - C:\ProgramFiles\Anaconda
    - C:\ProgramFiles\Anaconda\Scripts





---
## 包
> package

- `package/__init__.py`
- `package/__main__.py`


---
## 模块
> module
- `package/module.py`
- `import package.module`


---

- symbol
    - variable
    - function
    - class

- source.py
```py
# 创建module命名空间
import module
module.symbol()

# 将symbol放在source命名空间
from module import symbol
symbol()



# 绝对导入
from package.module import symbol
# 相对导入
from . import symbol
from module import symbol
# import module不能使用相对导入

# 处理重名问题
from __future__ import absolute_import
```
---

- source.py
```py


# 慎用：不能局部使用，交互式命令行使用
from module import *

```
- module.py
```py

#
__all__ = [
    '',
]

```


---

- 重新加载

```py

import module
import importlib
importlib.reload(module)

# import module会被重新加载
# from module import name不会被重新加载
# 不会递归：重新加载模块中的导入不会被重新加载
# 已实例化对象的类不会被重新加载



```



---

- 循环导入
- 模块缓存

---
## 导入父级目录模块
- 在`source`文件中导入`module`
- 将`parent/`添加到`sys.path`中
- directory_structure:
    - parent/
        - module.py
        - current/
            - source.py


- source.py
```py
import os
import sys

sys.path.append(os.path.abspath(os.path.join(__file__, os.path.pardir, os.path.pardir)))
import parent.module

```