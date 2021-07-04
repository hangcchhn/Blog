
# Database Datetime
> 数据库的日期时间：对比不同类型的数据库

## mysql(mariadb)
```sql

select now();
select sysdate();
-- now()始终记录整体开始执行时间
-- sysdate()记录函数执行当前时间
select now(), sleep(3), now();
select sysdate(), sleep(3), sysdate();


select localtime[stamp][()];

select current_timestamp[()];

select cur[rent_]date[()];
select cur[rent_]time[()];


select date('2017-05-15 10:37:14.123456');-- 获取日期：2017-05-15
select time('2017-05-15 10:37:14.123456');-- 获取时间：10:37:14.123456

select dayname('2017-05-15 10:37:14.123456');-- monday(返回英文星期)
select monthname('2017-05-15 10:37:14.123456');-- may(返回英文月份)

```


```sql
select year('2017-05-15 10:37:14.123456');-- 获取年份
select month('2017-05-15 10:37:14.123456');-- 获取月份
select day('2017-05-15 10:37:14.123456');-- 获取日
select hour('2017-05-15 10:37:14.123456');-- 获取时
select minute('2017-05-15 10:37:14.123456');-- 获取分
select second('2017-05-15 10:37:14.123456');-- 获取秒
select microsecond('2017-05-15 10:37:14.123456');-- 获取毫秒
select quarter('2017-05-15 10:37:14.123456');-- 获取季度
select week('2017-05-15 10:37:14.123456');-- 20 (获取周)
select week('2017-05-15 10:37:14.123456', 7);-- ****** 测试此函数在mysql5.6下无效
select weekofyear('2017-05-15 10:37:14.123456');-- 同week()
select dayofyear('2017-05-15 10:37:14.123456');-- 135 (日期在年度中第几天)
select dayofmonth('2017-05-15 10:37:14.123456');-- 5 (日期在月度中第几天)
select dayofweek('2017-05-15 10:37:14.123456');-- 2 (日期在周中第几天；周日为第一天)
select weekday('2017-05-15 10:37:14.123456');-- 0
select weekday('2017-05-21 10:37:14.123456');-- 6(与dayofweek()都表示日期在周的第几天，只是参考标准不同，weekday()周一为第0天，周日为第6天)
select yearweek('2017-05-15 10:37:14.123456');-- 201720(年和周)


select extract(year from '2017-05-15 10:37:14.123456');
select extract(month from '2017-05-15 10:37:14.123456');
select extract(day from '2017-05-15 10:37:14.123456');
select extract(hour from '2017-05-15 10:37:14.123456');
select extract(minute from '2017-05-15 10:37:14.123456');
select extract(second from '2017-05-15 10:37:14.123456');
select extract(microsecond from '2017-05-15 10:37:14.123456');
select extract(quarter from '2017-05-15 10:37:14.123456');
select extract(week from '2017-05-15 10:37:14.123456');
select extract(year_month from '2017-05-15 10:37:14.123456');
select extract(day_hour from '2017-05-15 10:37:14.123456');
select extract(day_minute from '2017-05-15 10:37:14.123456');-- 151037(日时分)
select extract(day_second from '2017-05-15 10:37:14.123456');-- 15103714(日时分秒)
select extract(day_microsecond from '2017-05-15 10:37:14.123456');-- 15103714123456(日时分秒毫秒)
select extract(hour_minute from '2017-05-15 10:37:14.123456');-- 1037(时分)
select extract(hour_second from '2017-05-15 10:37:14.123456');-- 103714(时分秒)
select extract(hour_microsecond from '2017-05-15 10:37:14.123456');-- 103714123456(日时分秒毫秒)
select extract(minute_second from '2017-05-15 10:37:14.123456');-- 3714(分秒)
select extract(minute_microsecond from '2017-05-15 10:37:14.123456');-- 3714123456(分秒毫秒)

```

```sql
select last_day('yyyy-MM-dd');-- 返回月份中最后一天
-- 增加|减少单位
select date_add|date_sub('yyyy-MM-dd HH:mm:ss.SSSSSS',interval 1 ?);
-- 年|季度|月|周|天|时|分|秒|毫秒
year|quarter|month|week|day|hour|minute|second|microsecond

-- 根据格式yyyy-MM-dd HH:mm:ss.SSSSSS加减n个单位
select period_add('yyyy-MM-dd HH:mm:ss.SSSSSS', +|-n)

select period_diff(201706, 201703);

-- 日期差值
select datediff('2017-06-05','2017-05-29');
-- 时间差值
select timediff('2017-06-05 19:28:37', '2017-06-05 17:00:00');

-- 






```


```sql
-- 从00:00:00开始计秒数（相互转化）
select time_to_sec('01:00:05'); -- 3605
select sec_to_time(3605);-- 01:00:05
--从0000-00-00开始计天数（相互转化）
select to_days('0000-00-00'); -- null 
select to_days('2017-06-05'); -- 736850
select from_days(0);           -- '0000-00-00' 
select from_days(736850);      -- '2017-06-05'
 
-- 字符串转换为日期时间函数：str_to_date(str, format)
select str_to_date('2017-06-05 19:40:30', '%Y-%m-%d %H:%i:%s');

-- 日期时间格式化
select date_format('2017-05-12 17:03:51', '%Y年%m月%d日 %H时%i分%s秒');-- 2017年05月12日 17时03分51秒(具体需要什么格式的数据根据实际情况来;小写h为12小时制;)
select time_format('17:03:51', '%H时%i分%s秒');-- 17时03分51秒(time_format()只能用于时间的格式化)
-- str_to_date()和date_formate()为互逆操作
 
-- 获得国家地区时间格式函数：get_format()
get_format(date|time|datetime, 'eur'|'usa'|'jis'|'iso'|'internal')

 
-- 拼凑日期、时间函数：makdedate(year,dayofyear), maketime(hour,minute,second)
select makedate(2017,31);   -- '2017-01-31' 
select makedate(2017,32);   -- '2017-02-01'
select maketime(19,52,35);  -- '19:52:35'
 
-- 时区（timezone）转换函数：convert_tz(dt,from_tz,to_tz)
select convert_tz('2017-06-05 19:54:12', '+08:00', '+00:00'); -- 2017-06-05 11:54:12
 
 
-- 日期[时间]转换unix的时间戳函数
-- unix_timestamp(), unix_timestamp(date[time]), 
select unix_timestamp();-- 当前时间的时间戳：1494815779
select unix_timestamp('2017-05-15');-- 指定日期的时间戳：1494777600
select unix_timestamp('2017-05-15 10:37:14');-- 指定日期时间的时间戳：1494815834
 
-- 将unix的时间戳转为时间
-- from_unixtime(unix_timestamp), from_unixtime(unix_timestamp,format)
select from_unixtime(1494815834);-- 2017-05-15 10:37:14 没有格式默认格式：YYYY-MM-dd HH:mm:ss
select from_unixtime(1494815834, '%Y年%m月%d日 %H时%分%s秒');-- 获取时间戳对应的格式化日期时间
 
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



## oracle(inspur)
```sql
-- 按格式将字符转换为日期
select to_date('2019-10-21 14:34:15','yyyy-mm-dd hh24:mi:ss') from dual;
-- 相差n天，计算时、分、秒、毫秒相应增删乘数即可
select to_number(sysdate - (sysdate - n)) * 24 * 60 * 60 * 1000 from dual;
-- 上个月
select to_char(add_months(trunc(sysdate),-1),'yyyy-mm') from dual;
-- 上个月最后一天
select last_day(add_months(trunc(sysdate),-1)) from dual;


-- 增|减n天
select next_day(sysdate,n) from dual;
-- 截取时间戳的某个部分
select extract(year|month|day|hour|minute|second from sysdate))
-- 增|减n个月
select add_months(trunc(sysdate,'year'), +|-n) from dual;

```


```


```


## sqlserver(sybase)
> 后续补充
```sql


```


## contrast
> 对比

### mysql->oracle

- 字符串与日期时间互转：mysql中可以显式和隐式，oracle中只能显式强制转换

#### 使用mybatis
- Could not set parameters for mapping
```xml
#{dateTime, jdbcType=VARCHAR}
```

- ORA-01847:月份中日的值必须介于 1 和当月最后一日之间
```sql
to_date(dateTime, 'yyyy-mm-dd hh24:mi:ss')
```

