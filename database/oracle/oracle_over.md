# Oracle中的over函数
> 开窗函数

- over([partition by group_column] order by order_column)

- number
---

## row_number & rank & dense_rank

可以与row_number()，rank()和dense_rank()一起使用

使用over语句排序是空值是最大的

分区(partition by），类似:分组(group by）
区别在于分组返回记录条数:
分区(partition by）返回组内所有记录，
分组(group by）只返回经过聚合函数处理字段之后的结果。



---

## lag & lead

- number:偏移量(1)
- default:默认值(null)
```sql
-- 向下偏移
select column_name, lag(column_name, natural_number, default_value) over(order by column_name) from table_name
-- 向上偏移
select column_name, lead(column_name, natural_number, default_value) over(order by column_name) from table_name

```


---

##  between ... and ...

- 函数:first_value(),last_value()
```sql
-- 第一名
select first_value(order_column) over(
    partition by group_column
    order by order_column
    rows
    between natural_number preceding
    and natural_number following
)


```
- rows:行
```sql

over(
    partition by group_column
    order by order_column
    rows
    between natural_number preceding
    and natural_number following
)



rows between unbounded preceding and unbounded following
-- 当前行:current row = 0 preceding|following
rows between current row and unbounded following
rows between unbounded preceding and current row



```
- range:范围
```sql
-- 日期:interval 'natural_number' day|month|year
range between interval 'natural_number' day preceding
    and interval 'natural_number' day following


```
