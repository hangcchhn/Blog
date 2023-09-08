
## 5.有序集合操作

```sh
# 成员操作
zadd zset scores members
zrem zset members
# 权值
zscore zset member
# 排序
zrange zset min max# 降序
zrevrange zset min max# 升序
# 索引
zrank zset member# 降序
zrevrank zset member# 升序
zcard zset# 集合大小
zremrangebyrank zset min max


```