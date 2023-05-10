# dpkg
> Debian Package

```sh
# 安装
dpkg -i|--install xxx.deb
# 列表
dpkg -l|--list xxx
# 查询
dpkg -s|--status xxx
# 搜索
dpkg -S|--search xxx


# 卸载软件删除配置
dpkg -P|--purge xxx
# 卸载软件保留配置
dpkg -r|--remove xxx


# 解压软件
dpkg --unpack xxx.deb

# 配置软件
dpkg --configure xxx




dpkg -b, --build
dpkg -c, --contents


```
