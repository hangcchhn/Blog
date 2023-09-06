# Python项目




---

## 项目管理

- run_project.sh

```sh
# 脚本绝对路径
cd absolute_path
python executable_file.py
python absolute_path/executable_file.py

# 先进入当前工作目录，再使用脚本相对路径
# absolute_path = work_directory/relative_path
cd work_directory
python relative_directory/executable_file.py
```

- executable_file.py
```py
os.getcwd()  # work_directory
__file__  # relative_directory/executable_file.py
```
---

- PyCharm默认会将work_directory添加到sys.path
- 在PyCharm->Project中选择文件夹鼠标右键Mark Directory as->Sources Root
- 注意删除__init__.py文件，有__init__.py代表着module
- 清理缓存并重启PyCharm：File->Invalidate Caches/Restart
---

- vscode执行py文件 -> python执行py文件

---
```
import pathlib
import importlib
```
---



- `__pycache__/`文件夹下`source.pyc`文件：编译

- `module.pyi`