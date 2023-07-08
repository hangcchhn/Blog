
 ## 一、工具



## nvm
> Node Version Manager

- nvm（unix|linux）|nvmw(windows)

```sh
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

# npm镜像
nvm npm_mirror https://npmmirror.com/mirrors/npm/

# node镜像
nvm node_mirror https://npmmirror.com/mirrors/node/

```





### npm
> Node Package Manager

```sh
npm install
-g:--global
-P:--save-prov
-D:--save-dev


```





### nrm
> Node Registry Manager

- npm|cnpm|taobao|nj|rednpm|npmMirror

```sh
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



