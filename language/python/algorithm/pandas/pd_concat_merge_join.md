# pd concat merge join

---
## pd.concat([df_left, df_right])
- join:
    - inner:内连接（交集）
    - outer:外连接（并集）
    - left:左连接
    - right:右连接
- axis:
    - 0:行
    - 1:列


```py
import numpy as np
import pandas as pd

import string


df1 = pd.DataFrame(data=np.arange(1, 10, 1).reshape(3, 3),
                 index=np.arange(3), columns=list(string.ascii_uppercase[:3]))
print('a:----------\n', df1, sep='')
df2 = pd.DataFrame(data=np.arange(1, 10, 1).reshape(3, 3),
                   index=np.arange(3, 6, 1), columns=list(string.ascii_uppercase[:3]))
print('b:----------\n', df2, sep='')

# 两个数据集合合并
df3 = pd.concat([df1, df2])
print('c:----------\n', df3, sep='')
# df4 = df1.concat(df2)
# print('d:----------\n', df4, sep='')

```
---
## df_left.merge(df_right,)
- how:
    - inner:内连接（交集）
    - outer:外连接（并集）
    - left:左连接
    - right:右连接

- on:关联条件
    - 关联关系：左右之分
    - 名称
        - left_on=''
        - right_on=''
    - 下标
        - left_index=0
        - right_index=0

- sort:排序

- suffixes=('_left', '_right'):同列后缀

- copy=True, False（bool）

- indicator=False, True, ''

- validate=None
    - 'one_to_one' or '1:1':
    - 'one_to_many' or '1:m':
    - 'many_to_one' or 'm:1':
    - 'many_to_many' or 'm:m':


```py
import numpy as np
import pandas as pd

import string


a = pd.DataFrame(data=np.arange(1, 10, 1).reshape(3, 3),
                 index=np.arange(3), columns=list(string.ascii_uppercase[:3]))
print('a:----------\n', a, sep='')


df1 = pd.DataFrame(data=np.arange(1, 10, 1).reshape(3, 3),
                   index=np.arange(1, 4, 1), columns=list(string.ascii_uppercase[-1:] + 'BC'))
print('b:----------\n', b, sep='')

# 内连接
df2 = pd.concat([a, b], join='inner', axis=1)
print('c:----------\n', c, sep='')
# 外连接
d = pd.concat([a, b], join='outer', axis=1)
print('d:----------\n', d, sep='')
# 内合并
e = df.merge(b, on=('C'), how='inner')
print('e:----------\n', e, sep='')

# 外合并
f = a.merge(b, on=('B'), how='outer')
print('f:----------\n', f, sep='')

# 左合并


# 右合并

# 索引连接合并，必须指定同名列后缀
g = a.join(b, lsuffix='_a', rsuffix='_b')
print('g:----------\n', g, sep='')



```

---
## df_left.join(df_right,)
> 索引连接合并，必须指定同名列后缀
- lsuffix='_left'
- rsuffix='_right'