# MyBatis


> XxxMapper.java

```java
public interface XxxMapper {

}


```
> XxxMapper.xml

```xml



```

- 参数params
```xml
<!-- 拼接，不推荐 -->
${params}
<!-- 占位，防注入 -->
#{params}
```
- 字符串类型参数，拼接默认会加上单引号，而占位不会
```java
String ascDesc = "desc";

```

```xml
<!-- 拼接 -->
<select id="">
    select * from table_name
    order by order_column ${ascDesc}
</select>

<!-- 占位 -->
<select id="" >
    select * from table_name
    order by order_column #{ascDesc}
</select>

```

```sql
-- 拼接
select * from table_name
order by order_column desc

-- 占位
select * from table_name
order by order_column 'desc'

```


- XML转义
```xml
&   &amp;
<   &lt;
>   &gt;
＂  &quot;
＇  &apos;
```

- `<![CDATA[?]]>`中间部分`?`不会被XML解析
- `<![CDATA[?]]>`首尾部分`<![CDATA[`和`]]>`不能含有空格或换行
- `<![CDATA[?]]>`不能嵌套使用






## 查询结果映射对象
- sql数据库列名：result_name
```sql
select result_id, result_name from result_table
```

- java语言属性：resultName
```java

import package.ResultType

public class ResultType{

    private Integer resultId;
    private String resultName;

    // set and get
}

```

### 1.使用别名
- mybatis配置xml
```xml
<setting name="mapUnderscoreToCamelCase" value="true"/>
```
- spring-boot配置properties
```properties
mybatis.configuration.mapUnderscoreToCamelCase=true
```

- XxxMapper.xml

```xml
<select id="selectId" resultType="package.ResultType">
    select result_id resultId, result_name resultName from result_table
</select>


```


### 2.使用映射

- javaType:包java.lang下的基本数据类型加上字符串

- jdbcType:枚举org.apache.ibatis.type.JdbcType

```xml
<resultMap id="resultTypeMap" type="package.ResultType">

    <id property="resultId" javaType="java.lang.Integer" column="result_id"  jdbcType="Integer" />
    <result property="resultName" javaType="java.lang.String" column="result_name" jdbcType="VARCHAR" />

</resultMap>

<select id="selectId" resultMap="resultTypeMap">
    select result_id, result_name from result_table
</select>

```

---
- ResultType类如果没有无参构造函数，使用constructor标签指定有参构造函数
```xml
<resultMap id="resultTypeMap" type="package.ResultType">

       <constructor>
            <idArg column="result_id" jdbcType="Integer" />
            <arg column="result_name" jdbcType="VARCHAR" />
        </constructor>

    <id property="resultId" javaType="java.lang.Integer" column="result_id"  jdbcType="Integer" />
    <result property="resultName" javaType="java.lang.String" column="result_name" jdbcType="VARCHAR" />

</resultMap>
```



---
### truncate table使用update标签

```xml
<update id="truncateId">
    truncate table table_name
</update>

```

---
### mybatis返回map结果

- key是列名,value是值

```java

public interface Mapper{

    List<Map<String, Object>> getList();

    @MapKey(value = "column_key")
    Map<String, Map<String, Object>> getMap();
}


```


```xml

<select id="getList" resultType="map">
    select column_name_list from table_name
</select>

<select id="getMap" resultMap="map">
    select column_key,column_name from table_name
</select>

```

- 处理null值没有对应key问题

- spring-boot:`mybatis.configuration.call-setters-on-nulls=true
`

```java
MybatisSqlSessionFactoryBean sqlSessionFactory = new MybatisSqlSessionFactoryBean();
MybatisConfiguration configuration = new MybatisConfiguration();
configuration.setCallSettersOnNulls(true);
sqlSessionFactory.setConfiguration(configuration);

```

---


- `DATE`类型映射的java变量只有年月日，`TIMESTAMP`类型映射的java变量包含时分秒
```xml


<result property="xxxDate" javaType="java.util.Date" column="xxx_date" jdbcType="DATE" />

<result property="xxxDate" javaType="java.util.Date" column="xxx_date" jdbcType="TIMESTAMP" />


```


---

- MyBatis框架连接Oracle数据库，不写resultMap映射关系

```xml

<select id="get">
    select column_name1 "columnName1"
    from table_name
</select>


```