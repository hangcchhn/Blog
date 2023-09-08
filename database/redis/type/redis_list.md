# Redis列表


## 3.双向链表操作

```sh
# 结点操作
# 从头部l|从尾部r
# 插入push|删除pop
lpush list nodes
rpush list nodes
lpop list
rpop list
# 双向链表操作
llen list
lrange list start end
ltrim list start end

```
