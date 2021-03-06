# MySQL DateTime




```sql

select now();-- now()始终记录整体开始执行时间
select sysdate();-- sysdate()记录函数执行当前时间
select now(), sleep(3), now();
select sysdate(), sleep(3), sysdate();


select localtime[stamp][()];

select current_timestamp[()];

select cur[rent_]date[()];
select cur[rent_]time[()];


select date(now());-- 获取日期：yyyy-MM-dd
select time(now());-- 获取时间：HH:mm:ss

select dayname(now());-- 返回英文星期
select monthname(now());-- 返回英文月份

```


```sql
select year(now());-- 获取年yyyy
select month(now());-- 获取月MM
select day(now());-- 获取日dd
select hour(now());-- 获取时HH
select minute(now());-- 获取分mm
select second(now());-- 获取秒ss

select microsecond(now());-- 获取毫秒；总是为0
select quarter(now());-- 获取季度；春季为1


select weekofyear(now());-- 当年的第几周
select dayofyear(now());-- 当年的第几天
select dayofmonth(now());-- 当月的第几天；同day(now())
select dayofweek(now());-- 当周的第几天；周日为1

select weekday(now());-- 当周的第几天；周一为0
select week(now());-- 获取周数；以周日开始算
select yearweek(now());-- 哪一年的那一周；以周日开始算

```






- week(date[,mode])


- 模式0：一周第一天是星期日；结果返回是0-53；从本年的第一个星期日开始是第一周，前面的计算为第0周
- 模式1：一周第一天是星期一；结果返回是0-53；假如1月1日到第一个周一的天数超过3天，则计算为本年的第1周。否则为第0周
- 模式2：一周第一天是星期日；结果返回是1-53；从本年的第一个星期日开始是第一周，前面的计算为上年度的第5x周
- 模式3：一周第一天是星期一；结果返回是1-53；假如1月1日到第一个周日的天数超过3天，则计算为本年的第1周。否则为上年度的第5x周
- 模式4：一周第一天是星期日；结果返回是0-53；假如1月1日到第一个周日的天数超过3天，则计算为本年的第1周。否则为第0周
- 模式5：一周第一天是星期一；结果返回是0-53；从本年的第一个星期一开始是第一周，前面的计算为第0周。
- 模式6：一周第一天是星期日；结果返回是1-53；假如1月1日到第一个周日的天数超过3天，则计算为本年的第1周。否则为上年度的第5x周
- 模式7：一周第一天是星期一；结果返回是1-53；从本年的第一个星期一开始是第一周，前面的计算为上年度的第5x周


```sql
-- 模式
week(date[,mode])
--不传mode参数时依赖default_week_format参数，默认值为0，
show variables like 'default_week_format'

yearweek(date[,mode]);-- 同week(date[,mode])

```


```sql

select extract(year from now());-- yyyy
select extract(month from now());-- MM
select extract(day from now());-- dd
select extract(hour from now());-- HH
select extract(minute from now());-- mm
select extract(second from now());-- dd

select extract(microsecond from now());;-- 获取毫秒；总是为0
select extract(quarter from now());-- 获取季度；春季为1
select extract(week from now());-- 获取周数；以周日开始算

select extract(year_month from now());-- yyyyMM
select extract(day_hour from now());-- HH
select extract(day_minute from now());-- HHmm
select extract(day_second from now());-- HHmmss
select extract(day_microsecond from now());-- HHmmss000000
select extract(hour_minute from now());-- HHmm
select extract(hour_second from now());-- HHmmss
select extract(hour_microsecond from now());-- HHmmss000000
select extract(minute_second from now());-- mmss
select extract(minute_microsecond from now());-- mmss000000

```

```sql
-- 当月的最后一天
select last_day(now());

-- 增加|减少单位(年|季度|月|周|天|时|分|秒|毫秒)
select date_add|date_sub(now(),interval 1 year|quarter|month|week|day|hour|minute|second|microsecond);


-- 月份操作使用yyMM或yyyyMM，加不加引号都可以
-- 增加|减少n个月输出
select period_add([yy]yyMM, +|-n);
-- 月份相差：前面-后面
select period_diff([yy]yyMM, [yy]yyMM);

-- 日期差值：前面 - 后面 = 相差天数
select datediff(now(),'yyyy-MM-dd HH:mm:ss');
-- 时间差值：前面 - 后面= (相差天数 * 24 + 相差小时):相差分钟:相差秒数
select timediff(now(),'yyyy-MM-dd HH:mm:ss');

```


```sql
-- 从00:00:00开始计秒数（相互转化）：3600 * HH + 60 * mm + ss
select time_to_sec('01:01:05'); -- 3665
select sec_to_time(3665);-- 01:01:05

--从0000-00-00开始计天数（相互转化）
select to_days('0000-00-00');-- null
select to_days('2000-12-31');-- 730850
select from_days(0);-- '0000-00-00'
select from_days(730850);-- '2000-12-31'

-- 字符串转换为日期时间函数：str_to_date(str, format)
select str_to_date('2017-06-05 19:40:30', '%Y-%m-%d %H:%i:%s');

-- 日期时间格式化
select date_format('2017-05-12 17:03:51', '%Y年%m月%d日 %H时%i分%s秒');-- 2017年05月12日 17时03分51秒
-- str_to_date()和date_formate()为互逆操作

select date('2017-05-12');-- 日期类型：2017-05-12
select time_format('17:03:51', '%H时%i分%s秒');-- 17时03分51秒
-- time_format()只能用于时间的格式化

```


```sql

-- 拼凑日期、时间函数：makdedate(year,dayofyear), maketime(hour,minute,second)
select makedate(2017,32);-- '2017-02-01'
select maketime(19,52,35);-- '19:52:35'



-- 获得不同地区日期|时间格式函数：get_format()
get_format(date|time|datetime, 'eur'|'usa'|'jis'|'iso'|'internal')


-- 时区（timezone）转换函数：convert_tz(dt,from_tz,to_tz)
select convert_tz('2017-06-05 19:54:12', '+08:00', '+00:00');-- 2017-06-05 11:54:12

 -- 日期[时间]转换unix的时间戳函数
-- unix_timestamp(), unix_timestamp(date[time]),
select unix_timestamp();-- 当前时间的时间戳
select unix_timestamp('2017-05-15');-- 指定日期的时间戳：1494777600
select unix_timestamp('2017-05-15 10:37:14');-- 指定日期时间的时间戳：1494815834

-- 将unix的时间戳转为时间
-- from_unixtime(unix_timestamp), from_unixtime(unix_timestamp,format)
select from_unixtime(1494815834);-- 2017-05-15 10:37:14 （默认格式：YYYY-MM-dd HH:mm:ss）
select from_unixtime(1494815834, '%Y年%m月%d日 %H时%分%s秒');-- 2017年05月15日 10时分14秒

-- 时间戳（timestamp）转换、增、减函数
select timestamp('2017-05-15');-- 2017-05-15 00:00:00
select timestamp('2017-05-15 08:12:25', '01:01:01');-- 2017-05-15 09:13:26
-- timestampadd() 函数类似于 date_add()。
select date_add('2017-05-15 08:12:25', interval 1 day);-- 2017-05-16 08:12:25
select timestampadd(day, 1, '2017-05-15 08:12:25');-- 2017-05-16 08:12:25;

-- 计算时间戳的差值
select timestampdiff(year, '2017-06-01', '2016-05-15');-- -1
select timestampdiff(month, '2017-06-01', '2016-06-15');-- -11
select timestampdiff(day, '2017-06-01', '2016-06-15');-- -351
select timestampdiff(hour, '2017-06-01 08:12:25', '2016-06-15 00:00:00');-- -8432
select timestampdiff(minute, '2017-06-01 08:12:25', '2016-06-15 00:00:00');-- -505932
select timestampdiff(second, '2017-06-01 08:12:25', '2016-06-15 00:00:00');-- -3035594



```
