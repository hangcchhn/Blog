


# 执行计划
explain


---

id:选择标识符
select_type:表示查询的类型。
table:输出结果集的表
partitions:匹配的分区
type:表示表的连接类型
possible_keys:表示查询时，可能使用的索引
key:表示实际使用的索引
key_len:索引字段的长度
ref:列与索引的比较
rows:扫描出的行数(估算的行数)
filtered:按表条件过滤的行百分比
Extra:执行情况的描述和说明

---
## select_type查询类型:主要用于区别普通查询，联合查询，子查询等的复杂查询
1. simple ——简单的select查询，查询中不包含子查询或者UNION
2. primary ——查询中若包含任何复杂的子部分，最外层查询被标记
3. subquery——在select或where列表中包含了子查询
4. derived——在from列表中包含的子查询被标记为derived（衍生），MySQL会递归执行这些子查询，把结果放到临时表中
5. union——如果第二个select出现在UNION之后，则被标记为UNION，如果union包含在from子句的子查询中，外层select被标记为derived
6. union result:UNION 的结果


---
## type显示联结类型，显示查询使用了何种类型，按照从最佳到最坏类型排序
1. system：表中仅有一行（=系统表）这是const联结类型的一个特例。
2. const：表示通过索引一次就找到，const用于比较primary key或者unique索引。因为只匹配一行数据，所以如果将主键置于where列表中，mysql能将该查询转换为一个常量
3. eq_ref:唯一性索引扫描，对于每个索引键，表中只有一条记录与之匹配。常见于唯一索引或者主键扫描
4. ref:非唯一性索引扫描，返回匹配某个单独值的所有行，本质上也是一种索引访问，它返回所有匹配某个单独值的行，可能会找多个符合条件的行，属于查找和扫描的混合体
5. range:只检索给定范围的行，使用一个索引来选择行。key列显示使用了哪个索引，
    一般就是where语句中出现了between,in等范围的查询。这种范围扫描索引扫描比全表扫描要好，因为它开始于索引的某一个点，而结束另一个点，不用全表扫描
6. index:index 与all区别为index类型只遍历索引树。通常比all快，因为索引文件比数据文件小很多。
7. all：遍历全表以找到匹配的行
注意:一般保证查询至少达到range级别，最好能达到ref级别。
