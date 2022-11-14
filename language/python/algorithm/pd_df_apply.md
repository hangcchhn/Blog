
---
## apply
- 类型Series没有applymap函数
- `series.apply(lambda x:func(x))`:每个元素都执行func函数，x为每个元素

- `df.applymap(lambda x:func(x))`:每个元素都执行func函数，x为每个元素

- `df.apply(lambda x:func(x), axis=0)`:按执行func函数，x为每列
- `df.apply(lambda x:func(x), axis=1)`:按行执行func函数，x为每行

---
- Series类型使用apply函数axis参数只能是0，表示对每个元素进行操作
- DataFrame类型使用apply函数
    - axis参数为0时表示对每列进行操作，即可以操作多行
    - axis参数为1时表示对每行进行操作，即可以操作多列

- df.applymap(func)
    DataFrame类型的applymap函数是对每个元素进行操作
