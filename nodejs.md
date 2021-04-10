# Node

> nodejs



版本

> LTS——Long Term Support(8.16.2)

- 8.x
- 10.x



 ## 一、工具



### 1.nvm——node version manager

> nvm（unix|linux）|nvmw(windows)

```
# 安装
nvm install 8.16.2
# 使用（切换）
nvm use 8.16.2
# 别名 默认
nvm alias default node

# 列表:别名->默认->稳定->版本
nvm ls
nvm ls-remove
nvm reinstall-package


```





### 2.npm——node package manager

```
npm install
-g:--global
-P:--save-prov
-D:--save-dev


```





### 3.nrm——node registry manager

> npm|cnpm|taobao|nj|rednpm|npmMirror

```
# 安装
npm install -g nrm
# 测试（测速）
nrm test
# 列表
nrm ls
# 使用（切换）
nrm use npm
# 添加
nrm add prinpm http://prinpm

```



