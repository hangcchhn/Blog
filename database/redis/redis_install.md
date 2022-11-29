# Redis install







## 源码编译安装

- http://redis.io/download
- http://download.redis.io/releases/

```sh
make

make test

make install
```

## Windows

- Redis on Windows:https://github.com/MSOpenTech/redis/releases
- Redis Desktop Manager:https://github.com/uglide/RedisDesktopManager/releases/tag/0.9.3

```
redis-server --service-install redis.windows-service.conf --loglevel verbose

redis-cli

redis-server --service-uninstall

```

- Ubuntu:`apt install redis-server`

- CentOS:`yum  install redis`

- Mac OS:`brew install redis`