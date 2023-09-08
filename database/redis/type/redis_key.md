# Redis键
> key

- 命令规则：键key不能有空格和换行；使用冒号:作为分隔符

```sh

# 显示所有，生产环境禁止使用
keys *

# 类型
type key
# 0(不存在);1(已存在)
exists key
# 删除（可多个空格分割）
del keys
# 重命名
rename oldkey newkey

set key value
set key value nx ex second
# 过期时间second（单位：秒）
expire key second
# -1(键没有设置即无限长);-2(键已经不存在了即过期了)
ttl key


```