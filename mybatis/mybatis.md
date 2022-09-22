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

    //set and get
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
## truncate

```xml
<update id="truncateId">
    truncate table table_name
</update>

```

---
### map
```java

public interface Mapper{

    List<Map<String, Object>> getListMap();

    @MapKey("key")
    Map<String, Object> getMap();
}






```


```xml
<resultMap id="getMap" type="java.util.Map">
    <id property="resultId" javaType="java.lang.Integer" column="key"  jdbcType="Integer" />
    <result property="resultName" javaType="java.lang.String" column="value" jdbcType="VARCHAR" />
</resultMap>
```
