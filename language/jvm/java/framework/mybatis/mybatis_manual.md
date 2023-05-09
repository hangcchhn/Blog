# MyBatis manual
> 手册



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
    insert into t_user(user_id) values(#{user_id})
</insert>

```

### oracle数据库

#### 使用系统生产id
```xml

<selectKey keyProperty="userId" resultType="int" order="BEFORE">
    select sys_guid() from dual
</selectKey>

```
#### 使用自增主键id

- oracle 11g
```xml
<selectKey keyProperty="userId" resultType="int" order="BEFORE">
    select s_tbl_user.nextval as id from dual
</selectKey>
```

- oracle 12c
```xml
<selectKey keyProperty="userId" resultType="int" order="BEFORE">
    select nvl(max(user_id),0)+1 from t_user
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


---
## 调用存储过程

### oracle数据库

> mybatis oracle 调用存储过程，使用游标返回结果，参数必须使用java.util.Map

```java
public void callUser(Map<String, Object> map);
```

```xml

<select id="callUser" statementType="CALLABLE" databaseId="oracle" parameterType="java.util.Map">
    { call sp_user(#{userName, mode=IN, jdbcType=VARCHAR, javaType=String},
    #{userList, mode=OUT, jdbcType=CURSOR, javaType=java.sql.ResultSet, resultMap=userMap}) }
</select>

<resultMap id="userEntityMap" type="UserEntity">
    <id >
    <result property="userName" javaType="java.lang.String" column="user_name" jdbcType="VARCHAR" />
</resultMap>

<resultMap id="userResultMap" type="UserResult">
    <result property="userName" javaType="java.lang.String" column="user_name" jdbcType="VARCHAR" />
    <collection property="userList" ofType="UserEntity" resultMap="userEntityMap"></collection>
</resultMap>

<select id="callUser" statementType="CALLABLE" databaseId="oracle" parameterType="UserResult">
    { call sp_user(#{userName, mode=IN, jdbcType=VARCHAR, javaType=String},
    #{userList, mode=OUT, jdbcType=CURSOR, javaType=java.sql.ResultSet, resultMap=userResultMap}) }
</select>

```

```java

public class UserEntity {
    private String userId;
    private String userName;
    // set and get
}

public class UserResult {
    private String userName;
    private List<UserEntity> userList;
    // set and get
}





```
