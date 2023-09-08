
# Redis字符串操作

```sh
# 键值操作
# 单个操作
set key value
get key
# 多个操作
mset keys values
mget keys values

# 加加减减
incr key
decr key
# 加减
incrby key int
decrby key int

# 字符串操作
# 追加
append key value
# 子串
substr key start end

```