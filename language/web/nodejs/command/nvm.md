# NVM
> Node Version Manager

- nvm（unix|linux）|nvmw(windows)

- 设置镜像
```sh

# npm镜像
nvm npm_mirror https://npmmirror.com/mirrors/npm/

# node镜像
nvm node_mirror https://npmmirror.com/mirrors/node/

```

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



