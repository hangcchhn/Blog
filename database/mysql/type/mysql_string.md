
# MySQL字符串


- 字符串函数
```sql

substr()
substring(string, index, length)

select concat(str1, str2);

-- 从左或右开始截取前多少位
select left('123456789', 5);-- 12345
select right('123456789', 5);-- 56789

-- 返回字串：按分隔符在第几处截取字串
select substring_index('yyyy-mm-dd', '-', 2);-- yyyy-mm

-- 返回下标:instr,locate,position
select locate('-', 'yyyy-mm-dd');-- 5
select locate('-', 'yyyy-mm-dd', 8);-- 8

-- 后者使用逗号分隔完全匹配前者
select find_in_set('-', 'yyyy,-,mm');
select find_in_set('-', 'yyyy,-m,m');


select replace(tbl.col, old_str, new_str)

select insert()

-- 字节数
select length('123456789')
-- 字符数
select char_length('123456789')

```


---


## JSON

- MySQL 5.7+

```sql

-- 返回json对象中key对应的value
json_extract(json_column, '$.key')
-- 去掉两边的双引号
json_unquote(json_extract(json_column, '$.key'))

-- 返回json对象所有key
json_extract(json_column, '$.*')

-- 返回json数组中的所有json对象
json_extract(json_column, '$.[*]')
json_extract(json_column, '$.[*].key')
-- N:下标，从0开始
json_extract(json_column, '$.[N]')
json_extract(json_column, '$.[N].key')

```