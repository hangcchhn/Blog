# Oracle问题
> ORA-XXXXX
---

- ORA-28000: the account is locked
需要以sysdba身份连接数据库执行下列语句
使用sys/tiger用户以sysdba身份解锁scott
```sql
sqlplus sys/tiger as sysdba
alter user  account unlock;
commit;
```
---
- ORA-28001: the password has expired

```sql
sqlplus / as sysdba
select * from dba_profiles where profile='DEFAULT' and resource_name='PASSWORD_LIFE_TIME';
alter profile default limit password_life_time unlimited;
alter user chench identified by chench;
```
---

- ORA-01861: 文字与格式字符串不匹配
to_date('string','yyyy-mm-dd')

- ORA-00933: SQL 命令未正确结束
删除句末分号(;)
检查是否存在limit语句


- ORA-00904:  标识符无效
双引号中的不是标识符



---

- ORA-01795: maximum number of expressions in a list is 1000

where column_name in (column_value1,...,column_valueN)
oracle使用in筛选时参数个数不能超过999


如果使用自查询作为条件就没有这个限制
where column_name in ( select column_value from table_name)


可以使用 (select value alias from dual union ) 代替 in ()



---

select listagg(column_name, ',') within group (order by order_column )
over([partition by group_column] order by order_column)
from table_name
group by group_column

使用listagg(column_name, ',')函数可能出现 result of string concatenation is too long 错误

原因是oracle数据库中varchar2类型最大长度限制是4000

解决办法是使用xmlagg替换listagg：
select rtrim(xmlagg(xmlelement(e, column_name, ',').extract('//text()')
 order by order_column).GetClobVal(), ',') from table_name

---


 在Oracle中，VARCHAR2 字段类型，最大字节长度为4000；
 在PL/SQL中，VARCHAR2 变量类型，最大字节长度为32767。



二进制大型对象:BLOB(Binary Large Object)
字符型大型对象:CLOB(Character Large Object)

最大字节长度为4GB

MyBatis

org.apache.ibatis.type.BlobTypeHandler
org.apache.ibatis.type.ClobTypeHandler


<result property="clob_property" javaType="" column="clob_column" jdbcType="Clob" typeHandler="org.apache.ibatis.type.ClobTypeHandler" />

---


select userenv('language') from dual;

如果显示SIMPLIFIED CHINESE_CHINA.ZHS16GBK，一个汉字占用两个字节；
如果显示SIMPLIFIED CHINESE_CHINA.AL32UTF8，一个汉字占用三个字节。


环境变量
NLS_LANG
NLS_LANGUAGE
NLS_TERRITORY

select * from v$nls_parameters
where parameter like 'NLS%';

nls_length_semantics=byte

varchar2类型的长度是以byte为单位


lengthb(string) 计算string所占的字节长度，单位是字节byte
length(string)  计算string所占的字符长度，单位是字符char

select lengthb('字') from dual; -- 返回2,表示2个字节byte
select length('字')  from dual; -- 返回1,表示1个字符char


- ORA-01461: 只有在将值插入数据类型为 LONG 的列时，才可以绑定一个 LONG 值

原因
select "" from dual
字符串太长会转成LONG类型，导致使用该字段时类型不一致出错

数据库表字段使用CLOB或BLOB类型

批量插入，存在就更新
```xml
<mapper namespace="package.XxxMapper">

    <insert id="batchInsertUpdate" parameterType="package.XxxEntity">
        <foreach collection="xxxList" item="item" index="index" open="begin" separator=" " close="end;">
            merge into xxx_table t1 using dual
            on (t1.unique_column = #{item.uniqueField} and...)
            when matched then update set t1.update_column = #{item.updateField},...
            when not matched then insert (t1.insert_column,...) values (#{item.insertField},...)
        </foreach>
    </insert>
</mapper>
```


---
oracle中文排序

```sql
-- 默认排序是二进制(BINARY)排序
select * from v$nls_parameters
where parameter = 'NLS_SORT';

alter session set NLS_SORT='XXX';






select column_name from table_name
order by nsl_sort(column_name, 'NLS_SORT=SCHINESE_PINYIN_M');

```

### nsl_sort(column_name, 'NLS_SORT=SCHINESE_PINYIN_M')函数
- SCHINESE_PINYIN_M:按拼音排序
- SCHINESE_RADICAL_M:按照部首（第一顺序）、笔划（第二顺序）排序
- SCHINESE_STROKE_M:按照笔划（第一顺序）、部首（第二顺序）排序



