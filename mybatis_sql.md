# MyBatis sql




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

- mapper.xml
```xml
<select resultType="package.ResultType">
    select result_id resultId, result_name resultName from result_table 
</select>
```


### 2.使用映射

- javaType:包java.lang下的基本数据类型加上字符串

- jdbcType:枚举org.apache.ibatis.type.JdbcType

```xml
<resultMap id="resultMap" type="package.ResultType">

    <id property="resultId" javaType="java.lang.Integer" column="result_id"  jdbcType="Integer" />
    <result property="resultName" javaType="java.lang.String" column="result_name" jdbcType="VARCHAR" />

</resultMap>

<select resultMap="resultMap">
    select result_id, result_name from result_table 
</select>

```


## 使用自增主键

### 1.解决oracle数据库无法设置自增主键的bug

- 报错：Error getting generated key or setting result to parameter object

```xml
<!-- 
    useGeneratedKeys开关
    keyProperty属性
    keyColumn列名
 -->
<insert id="insertUser" parameterType="hn.cch.springboot_datasource.jdbc.dto.User"
        useGeneratedKeys="true" keyProperty="userId" keyColumn="user_id">
</insert>

```

### oracle数据库

#### 使用系统生产id
```xml

<selectKey  keyProperty="userId" resultType="int" order="BEFORE">
    select sys_guid() from dual
</selectKey>

```
#### 使用自增主键id

- oracle 11g
```xml
<selectKey  keyProperty="userId" resultType="int" order="BEFORE">
    select s_tbl_user.nextval as id from dual
</selectKey>
```

- oracle 19c
```xml
<selectKey  keyProperty="userId" resultType="int" order="BEFORE">
    select nvl(max(user_id),0)+1 from tbl
</selectKey>
```


### mysql数据库

#### 使用系统生产id
```xml

<selectKey  keyProperty="userId" resultType="int" order="BEFORE">
    select replace(uuid(),'-','')
</selectKey>
```
#### 使用自增主键id
```xml
<selectKey  keyProperty="userId" resultType="int" order="AFTER">
    select last_insert_id()
</selectKey>
```

## 调用存储过程


