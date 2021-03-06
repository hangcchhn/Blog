# Anaconda


---
- anaconda 5.0.1 -> python 2.7.14
- anaconda 5.2.0 -> python 3.6.5

- Anaconda Prompt
- 恢复菜单：`python .\Lib\_nsis.py mkmenus`
- 替换图标
.\Anaconda\Menu\Iconleak-Atrous-Console.ico
%SystemRoot%\System32\cmd.exe


```

.\Anaconda\Library\mingw-w64\bin
.\Anaconda\Library\usr\bin
.\Anaconda\Library\bin


.\Anaconda\
.\Anaconda\Scripts

https://repo.anaconda.com/pkgs/main/win-32
https://repo.anaconda.com/pkgs/main/noarch
https://repo.anaconda.com/pkgs/free/win-32
https://repo.anaconda.com/pkgs/free/noarch


```

```
conda config --add channels http://mirrors.aliyun.com/anaconda/pkgs/main
conda config --add channels http://mirrors.aliyun.com/anaconda/pkgs/free


conda config --set show_channel_urls yes
```

- .condarc
```
channels:
  - http://mirrors.aliyun.com/anaconda/pkgs/main
  - http://mirrors.aliyun.com/anaconda/pkgs/free
  - defaults
ssl_verify: true
show_channel_urls: true
```
---
- centos 7.x install anaconda 5.2.0

yum install bzip2

---

```
conda install anaconda-clean


anaconda-clean --yes





conda command

conda --version
conda update conda


```

---

卸载


conda install anaconda-clean

anaconda-clean

---


虚拟环境路径：C:\ProgramFiles\Anaconda\envs
```
conda create -n env_name python=M.N

conda create -n env_name --clone root




conda remove -n env_name --all


conda env list
```

- windows:activate env_name
- linux:source activate env_name

- windows:deactivate env_name
- linux:source deactivate env_name


---
包：

```
conda list
conda install pkg_name


conda cleanup
conda clean --packages

```
---
- docker部署anaconda环境
```sh
docker pull continuumio/anaconda3:5.2.0

docker run -i -t continuumio/anaconda3:5.2.0 /bin/bash

docker run -it -d --name anaconda3_5.2.0 continuumio/anaconda3:5.2.0 /bin/bash

docker exec -it anaconda3_5.2.0 /bin/bash

cd /opt/conda/envs

conda create -n python_3.6.5 python=3.6.5

source activate python_3.6.5

```
- 在docker容器中运行jupyter notebook
```sh
docker run -i -t -p 8888:8888 continuumio/anaconda3 /bin/bash -c "\
    conda install jupyter -y --quiet && \
    mkdir -p /opt/notebooks && \
    jupyter notebook \
    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root"
```






