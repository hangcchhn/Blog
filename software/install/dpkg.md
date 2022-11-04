


```
# 安装
dpkg i xxx.deb
# 列表
dpkg -L|--list-files xxx
dpkg -l xxx
# 查询
dpkg -s|--status xxx
dpkg -S|--search xxx


# 卸载软件删除配置
dpkg -P|--purge xxx
# 卸载软件保留配置
dpkg -r|--remove xxx


# 解压软件
dpkg --unpack xxx.deb

# 配置软件
dpkg --configure xxx
# 软件内容
dpkg -c xxx.deb


```
