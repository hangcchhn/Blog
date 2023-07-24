# Python测试

---
## unittest

- Python自带的单元测试模块

```sh
import unittest

python -m unittest -v py_unittest.py

python -m unittest discover -s project_directory -p "*_test.py"
````
```py
@unittest.skip("skip test")
```

---

## nose


- nose2拓展unittest，提供插件
---
## pytest

- `pip install pytest`
- 兼容unittest和nose2

- 测试文件：以test_开头或以_test结尾
- 测试类：以Test开头，但不能带init方法
- 测试函数：以test_开头


- `@pytest.fixture`装饰器scope参数
    - function：scope默认是function，每个test都运行
    - class：每个class的所有test只运行一次
    - module：每个module的所有test只运行一次
    - session：每个session只运行一次


- 前置和后置（模块，类，函数，）
    - setup
    - teardown




---

```sh
pytest --help

pytest py_test.py

# 指定测试用例
-k "Test_class and test_method"

-h:帮助

失败停止实例阈值
-x 2,--maxfail=2

pip install pytest-xdist
# 多线程或者分布式
-n 2

pip install pytest-rerunfailures
# 失败重跑实例阈值
--reruns=2


# 网页测试报告
pip install pytest-html
--html=report.html

```

---

### pytest.ini

```ini
[pytest]
; minversion = 5.0
addopts = -vs

markers =

; testpaths = ./test
norecursedirs = logs
python_files = test*.py *test.py
python_classes = Test*
python_functions = test_*

```

---
### 日志

---

### 插件
- pytest-selenium
- pytest-ordering
- pytest-rerunfailures
- pytest-sugar




---

### 装饰器
`@pytest.mark.xxx`
-m "xxx"



`@pytest.mark.slow`
pytest -m slow


`@pytest.mark.website`
pytest -m "website" py_pytest.py


