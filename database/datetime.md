
# Database Datetime
> 数据库的日期时间
- 对比不同类型的数据库

## MySQL



---
## Oracle


---
## SQL Server


```sql


```

---
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

#### 判断时间是上一周

```sql
-- mysql
select ... from ... t
where yearweek(t.datetime) = yearweek(now()) - 1

select date_sub(now(), interval (dayofweek(now()) + 6) day), date_sub(now(), interval (dayofweek(now()) ) day)


-- oracle

select sysdate - to_char(sysdate, 'd') - 6, sysdate - to_char(sysdate, 'd') from dual

--


```

