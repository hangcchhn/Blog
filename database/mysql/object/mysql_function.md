# MySQL函数
> function

- 字符串相关
    - trim()
    - rtrim()
    - ltrim()
    - lower()
    - upper()

- 日期时间相关
    - now() = yyyy-mm-dd hh:mm:ss
    - date()
    - time()

- 数学相关
    - abs()
    - sqrt()

---
## 聚类函数
列名一致(group by ... = select ...) 聚类函数除外
- count() 统计null

- avg(),sum(),max(), min() 忽略null  是否去重all|distinct列名


---
- concat()

- group_concat() 字段连接函数 聚合函数


group_concat( [distinct] 要连接的字段 [order by 排序字段 asc/desc] [separator ‘分隔符’] )

语句顺序：
where 查询条件 group by 分组字段 order by 排序字段 having 分组查询


group by子句必须出现在where子句之后，order by子句之前. having语句必须在order by子句之后。
（where先执行，再groupby分组；groupby先分组，having在执行。）


除聚合函数外，select语句中的其他字段都必须在group by语句之中
当sql_mode没有设置only_full_group_by，查询列可以不在分组中，
非聚合函数字段取值为遍历数据顺序进行分组时第一条记录的字段值。

---



交叉n
嵌套查询

合并u
重复元素去重:union
包含重复元素:union all

---


```sql
-- 类型转换
select cast(column_name as column_name_type)

```