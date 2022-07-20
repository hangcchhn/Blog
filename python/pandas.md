# pandas

- pip install pandas
- import pandas as pd

---

# Index
> 索引:pandas.core.indexes.base.Index

---
# Series
> 一维:pandas.core.series.Series














---
## DataFrame
> 二维：pandas.core.frame.DataFrame

### \_\_new\_\_
1. list,tuple,dict,Series -> list
2. array,list,tuple,dict,Series -> dict
3. numpy.ndarray


---

- df.index
    - 索引(不可修改)

- df.columns
    - 列


- df.values
    - 数据
- df.shape
    - 形状(元组)
- df.ndim
    - 维度
- df.dtypes
    - 元素数据类型

- df.head()
- df.tail()