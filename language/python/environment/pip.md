# pip

- PYTHONHOME:D:\Python\python
- .\Lib\site-packages

---

```sh
pip config set global.index-url https://repo.huaweicloud.com/repository/pypi/simple
pip config set install.trusted-host repo.huaweicloud.com
```

- windows:~/pip/pip.ini
- linix:~/.pip/pip.conf

[global]
index-url=https://mirrors.aliyun.com/pypi/simple/
[install]
trusted-host=mirrors.aliyun.com



---

```sh
# 下载本地

pip wheel -w folder -r requirements.txt

pip download -d folder -r requirements.txt






# 离线安装

pip install xxx.whl
pip install xxx.tar.gz

# 对于压缩文件可以解压后进入文件夹执行下列命令安装
python setup.py build
python setup.py install



---

安装出现错误可以尝试安装历史版本
pip install package==version

安装出现错误可以尝试安装离线文件
pip install path\package.whl


pip install --user package
pip install --no-deps package


pip install --no-warn-script-location package
pip install --no-warn-conflicts package



python -m pip install -r requirements.txt

python -m pip install -U pip==version

```

---
```sh
# 导出安装第三包的版本
pip freeze > requirements.txt

```
- requirements.txt:
package==version

```sh
pip install -r requirements.txt
pip install -c constraints.txt

# 升级
pip install -U package


pip install -i http://xxx/pypi/simple package

pip install --no-index -f folder -r requirements.txt


pip install --cache-dir 'cache' -r requirements.txt



# 平台
--platform=win32, win_amd64, manylinux, macosx

# 卸载
pip uninstall -y -r requirements.txt
```


---

## python语言使用pip工具安装模块


```sh
pip install ipython spyder

pip install jupyter notebook

pip install numpy pandas

pip install matplotlib

pip install scipy sympy

pip install scikit-learn keras

pip install tensorflow tensorboard

pip install torch torchvision

pip install django

pip install scrapy

pip install tornado

pip install pygame

pip install pyqt5

pip install beautifulsoup4


pip install pillow

pip install selenium

pip install statsmodels

pip install pyspark

pip install pyecharts

pip install python-docx python-pptx

pip install openpyxl

pip install pymysql pymssql cx-oracle psycopg2

pip install redis pymongo



pip install flask

pip install sqlalchemy

pip install flask-sqlalchemy

pip install flask-restful

pip install flask-restplus

pip install bottle fastapi


pip install web.py wsgilog


```
