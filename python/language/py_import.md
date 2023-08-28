# 导入






- `sys.path`
    - 第一个是空字符串，代表当前工作目录、脚本所在目录
    - 环境变量`PYTHONPATH`
---
- 模块缓存

```py
# 创建命名空间
import module
# 将symbol放在当前命名空间
from module import symbol

# 慎用：不能局部使用
from module import *

# 绝对导入
from package.module import symbol
# 相对导入
from . import symbol
from module import symbol
# import module不能使用相对导入
```


---

```py

import module
import importlib
importlib.reload(module)

# import module会被重新加载
# from module import name不会被重新加载
# 不会递归：重新加载模块中的导入不会被重新加载
# 已实例化对象的类不会被重新加载



```


- package
    - `__init__.py`
    - `__main__.py`