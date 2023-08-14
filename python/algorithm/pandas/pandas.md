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
- `pd.DataFrame()`
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

---

## 缺失值判断：NaN, None
- pd.isna(df)
- pd.isnull(df)
- df.isna()
- df.notna()
- df.isnull()
- df.notnull

- df.dropna():整行删除
- df.fillna():缺失填充（平均值或中位数）

### 对列统计
- df[''].mean()
- df[''].median()
- df[''].max()
- df[''].min()
- df[''].argmax()
- df[''].argmin()
-
- df[''].idxmax()
- df[''].idxmin()




- 对列去重
    - `set(df[''].tolist())`
    -  `df[''].unique()`



