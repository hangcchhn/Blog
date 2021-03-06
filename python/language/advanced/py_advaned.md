# Python进阶
> advanced


---
## 垃圾回收
> Garbage Collection


- 小整数[-5,256]，共用对象，常驻内存
- 大整数，不共用内存；若引用计数为0，则销毁

- 单个字符共用对象，常驻内存
- 单个单词(不空格的字符串)，默认开启intern机制，共用对象；若引用计数为0，则销毁
- 多个单词(含空格的字符串)，不开启intern机制，不共用对象；若引用计数为0，则销毁

- 数值和字符串类型都是不可变的，每次修改都是重新创建对象


### 垃圾回收机制以引用计数为主、分代回收和标记清除为辅

- 引用计数(reference counting)：
python程序将创建的对象添加到refchain环状双向链表中
对象内部都有一个ob_refcnt用来保存当前对象的引用计数

- 标记清除(mark sweep)：
可能存在循环引用问题的数据类型：列表、元组、字典、集合、自定义类
标记清除专门针对引用计数可能存在循环引用的对象进行特殊处理的算法


- 分代回收(generation collection)：
分代回收对标记清除以空间换时间优化的算法
可能存在循引用的对象拆分到三个链表分三代



```py

import sys
# 查询变量引用计数
obj = "str"
ref_cnt = sys.getrefcount(obj)


import gc
obj = "str"
del obj
# 设置垃圾回收开关
gc.disable()
gc.enable()

# gc设置debug日志:gc.DEBUG_COLLECTABLE | gc.DEBUG_UNCOLLECTABLE | gc.DEBUG_INSTANCES | gc.DEBUG_OBJECTS
gc.set_debug(gc.DEBUG_LEAK)


# 显式执行垃圾回收
gc.collect()

# 自动执行垃圾回收频率
gc.get_threshold()
# (700, 10, 10)
# 当链表中的对象超过 700个就进行零代回收
# 当进行 10 次零代回收之后就进行一代回收
# 当进行 10 次一代回收之后就进行二代回收
gc.set_threshold(700, 10, 10)

# 获取当前自动执行垃圾回收的计数器，长度为3的列表，表示分代回收分为三代
gc.get_count()

gc.garbage


```