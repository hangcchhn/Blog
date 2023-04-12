

# MySQL索引
> index


---

索引原理



二叉搜索树
1.每个结点有且仅存一个数据，所有非叶子结点至多拥有两个子结点；
2.非叶子结点存储的数据大于其左子结点数据，小于其右子结点数据；

平衡二叉树
1.左右子树深度之差不大于2


b树（b-树）

多路搜索树








---

mysql数据库
innodb存储引擎中索引使用b+树

大概是1170子树
大概高度是3层

只有叶子结点存储数据
非叶子结点存储键值和指针


innodb存储引擎的最小存储单元是页
每页大小是16kb=16384字节
结点按页大小存储数据记录



计算方便大多假设类比通常情况
一行记录的数据大小为1kb
每页存储的记录数为16kb/1kb=16


键值id为bigint类型长度为8字节
指针在innodb源码中设置为6字节
非叶子结点=键值+指针=共14字节
每页非叶子结点16384/14=1170


b+树高度为3，就能满足千万级的数据存储
总记录数为1170*1170*16=21902400条


在使用索引查询一次页操作代表一次io操作
通过索引查询通常3次io操作就能找到数据

mysql数据库innodb存储引擎b+树索引结构特点是更矮更胖
b+树对比b树主要区别在于非叶子结点是否存储数据
由于上述结构特点：
使用b+树非叶子结点不存储数据，只存储键值和指针（原小于数据记录大小）
可使每页存储更多的非叶子结点，从而让非叶子结点拥有更多的子结点，
在相同记录总数下可减少树的高度，从而在查询过程中减少io操作次数。




---


## 索引类型


- 普通索引：index
没有任何限制，优化查询数据


- 唯一索引：unique index
列值必须唯一，允许有空值


- 主键索引:primary key
不允许值重复或者值为空



- 全文索引：fulltext
字符类型：char、varchar、text
5.7.x之前只有myisam存储引擎支持全文索引

- 空间索引：spatial
空间类型： geometry、point、linstring、polygon
5.7.x之前只有myisam存储引擎支持空间索引


- 单列索引和组合索引



---
## 新增索引方式
> 以唯一索引unique index为例
```sql
-- 创建表同时带上索引
create table t_user (
    user_id int(16) not null,
    user_name varchar(16) not null,
    primary key (user_id),
    unique key uk_user (user_id)
);



create table t_user (
    user_id int(16) not null,
    user_name varchar(16) not null,
);
-- 修改表结构添加索引
alter table t_user add unique index ui_user (user_id);

-- 给已存在的表创建索引，不能创建主键索引
create unique index ui_user on t_user (user_id)；


```






