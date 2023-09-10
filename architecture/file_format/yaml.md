# YAML
> Yet Another Markup Language


- xxx.yml

- 大小写敏感
- 井号注释
- 注意冒号后的空格

```yaml
# 键值
key: value

# 属性
class:
    field: xxx

# 列表
list0:
    - item0
    - item1


# 转义字符
tab: "\t"
enter: "\n"

# 特殊字符
all: "*"

# 日期:yyyy-MM-dd
date: 2000-01-01
# 时间:yyyy-MM-ddTHH:mm:ss+mm:ss
time: 2000-01-01T01:01:01+08:00


```


---
# 锚点

```yaml
# 定义
list0:
    - &name0 item0
    - item1
# 引用
list1:
    - item9
    - *name0

# 等价
list1:
    - item9
    - item1

# 定义
class0: &point0
    field0: value0
    field1: value1

# 合并
class1:
    field9: value9
    <<: *point0

# 等价
class1:
    field9: value9
    field0: value0
    field1: value1



# 引用

```