# venv

- Python自带的虚拟环境管理工具
- Python 3.6+默认安装

```sh
# 命令的第二个参数venv是虚拟环境目录
python -m venv venv
# PyCharm默认使用venv作为虚拟环境名称
source ./venv/bin/activate

# Windwos
.\venv\Scripts\activate.bat
.\venv\Scripts\activate.ps1

deactivate
```