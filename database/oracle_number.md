
# oracle number
>

---
## 序号

- rownum
关键字
注意在条件中使用时rownum只能从1开始，可以添加别名再嵌套外层查询进行判断，
使用rownum=2、rownum>1, rownum between 2 and 3；等都查询不到数据；
oracle中的rownum是在取数据时产生的序号（在order by排序之前确定序号）。


```sql
select rownum no_id, t.* from (
    select column_name a,... from table_name
    order by ...
)
```

---
## 编号
- row_number()
row_number()函数后必须跟over语句进行[分组]排序后再进行编号

```sql
select * from (
    select row_number() over (partition by group_column order by order_column) rn
    , t.column_name, ...
    from table_name t
) s where s.rn = 1
```

---
## 排名
- rank()
对比row_number()：在使用over语句进行排序的时候，排序字段值相同时排名相同取最小值，并列之后的名次同row_number()

- dense_rank()
对比rank()：当排名中并列之后的名次，rank()会出现名次跳跃（编号累加），dense_rank()则保持名次连续（名次累加）

---

## 开窗函数
- over([partition by group_column] order by order_column)
    - 可以与row_number()、rank()和dense_rank()一起使用
    - 使用over语句排序时，空值是最大的

- 分区与分组类似，区别在于分组返回记录条数：
    - 分区（partition by）返回组内所有记录，
    - 分组（group by）只返回经过聚合函数处理字段之后的结果。
