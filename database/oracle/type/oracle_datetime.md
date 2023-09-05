# Oracle DateTime



```sql



-- 增|减n天
select sysdate +|-n from dual;

-- 增|减n个月
select add_months(sysdate, +|-n) from dual;

-- 相差n天，计算时、分、秒、毫秒相应增删乘数即可
select to_number(sysdate - (sysdate - n)) * 24 * 60 * 60 * 1000 from dual;


-- 下周几(下个星期几):week=1~7或Sunday~Saturday或Sun~Sat
select next_day(sysdate, week) from dual;

-- 当月最后一天
select last_day(sysdate) from dual;

-- 特殊写法：只支持yyyy-mm-dd格式日期
select date'2000-01-01' from dual;


-- 按格式将字符串和日期时间相互转换
select to_date('2000-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss') from dual;
select to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss') from dual;

-- 特殊格式：针对结果是英文的格式，注意也区分英文大小写，在此说明后续不再赘述）

select to_char(sysdate, 'month') from dual;-- 全称月份
select to_char(sysdate, 'mon') from dual;-- 简称月份

select to_char(sysdate, 'day') from dual;-- 全称星期
select to_char(sysdate, 'dy') from dual;-- 简称星期

select to_char(sysdate, 'yyyy') from dual;-- 年份全四位
select to_char(sysdate, 'yyy') from dual;-- 年份后三位
select to_char(sysdate, 'yy') from dual;-- 年份后二位
select to_char(sysdate, 'y') from dual;-- 年份后一位

select to_char(sysdate, 'mm') from dual;-- 当年的第几月（01-12）

select to_char(sysdate, 'ddd') from dual;-- 当年的第几天（001-366）
select to_char(sysdate, 'dd') from dual;-- 当月的第几天（01-31）
select to_char(sysdate, 'd') from dual; -- 当周的第几天（1-7）；周日为1

select to_char(sysdate, 'ww') from dual;-- 当年的第几周
select to_char(sysdate, 'w') from dual; -- 当月的第几周
select to_char(sysdate, 'iw') from dual; -- 当月的第几周；ISO标准

select to_char(sysdate, 'cc') from dual;-- 世纪（年份前两位）
select to_char(sysdate, 'q') from dual; -- 季度；春季为1





```


```sql
select trunc(sysdate) from dual; -- 当天
select trunc(sysdate, 'dd') from dual; --当天

select trunc(sysdate, 'd') from dual;-- 当周的第一天
select trunc(sysdate, 'mm') from dual;-- 当月的第一天

select trunc(sysdate, 'yyyy') from dual;-- 当年的第一天
select trunc(sysdate, 'yyy') from dual;-- 当年的第一天
select trunc(sysdate, 'yy') from dual;-- 当年的第一天
select trunc(sysdate, 'y') from dual;-- 当年的第一天

select trunc(sysdate, 'hh') from dual;-- yyyy-MM-dd HH:00:00
select trunc(sysdate, 'mi') from dual;-- yyyy-MM-dd HH:mm:00

-- 返回本周周一
select trunc(sysdate, 'iw') from dual;  --Monday为每周第一天
select trunc(sysdate, 'ww') from dual;  --当年1月1日为每周第一天
select trunc(sysdate, 'w') from dual;   --当月1日为每周第一天

-- trunc(数值（小数，正负数）)：保留整数，去掉小数
-- trunc(数值（小数，正负数），位数（整数，正负数）)：直接截取，不四舍五入
-- 位数为正数保留几位小数，位数为负数整数后几位使用0替换

-- 截取日期时间某个部分（yyyy|MM|dd|HH|mm|ss）
select extract(year|month|day|hour|minute|second from sysdate) from dual;

```