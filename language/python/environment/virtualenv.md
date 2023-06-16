# virtualenv

python虚拟环境：WORKON_HOME环境变量

virtualenv安装
`pip install virtualenv virtualenvwrapper`

碰到Cannot uninstall 'filelock'. 问题
pip install --ignore-installed filelock

- Windows系统：`pip install virtualenvwrapper-win`


python-path安装路径
C:\ProgramFiles\Python\python
WORKON_HOME环境变量
C:\ProgramFiles\Python\workon

---
## virtualenv命令

```sh
# 指定安装路径创建虚拟环境
virtualenv  -p, --python pythonexe_path virtualenv_name


# 进入虚拟环境
cd ./virtualenv_name/Scripts

# 激活虚拟环境
activate

# 退出虚拟环境
deactivate



# 查看虚拟环境列表
workon

# 进入虚拟环境
workon virtualenv_name


# 到处安装模块的名称和版本
pip freeze > packages.txt
# 指定模块的名称和版本安装
pip install -r packages.txt

# 新建并且激活虚拟环境
mkvirtualenv virtualenv_name

lsvirtualenv
cdvirtualenv

cdsitepackages
lssitepackages

# 退出并且删除虚拟环境
rmvirtualenv virtualenv_name

```


```sh
virtualenv  -p python3.6 py36


```








