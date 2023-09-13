
# MySQL 字符串


- 字符串函数
```sql

substr()
substring()

-- 返回字串：按分隔符在第几处截取字串
select substring_index('yyyy-mm-dd', '-', 2);-- yyyy-mm

-- 返回下标
select locate('-', 'yyyy-mm-dd');-- 5
select locate('-', 'yyyy-mm-dd', 8);-- 8

-- 后者使用逗号分隔完全匹配前者
select find_in_set('-', 'yyyy,-,mm');
select find_in_set('-', 'yyyy,-m,m');





```