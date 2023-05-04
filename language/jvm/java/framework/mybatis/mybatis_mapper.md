# MyBatis mapper




## 增删改查

### insert


### delete

### update


### select



## 特殊标签
---

### sql
> 片段
```xml
<!-- 定义 -->
<sql id="xxx">
    ...
</sql>
<!-- 调用 -->
<include refid="xxx"></include>

```

### if
> 判断
- 使用`and`和`or`替代`&&`和`||`实现与和或逻辑
- 使用`lt`和`gt`替代`<`和`>`实现小于和大于逻辑
- 使用`lte`和`gte`替代`<=`和`>=`实现小于等于和大于等于逻辑
- 发现`eq`和`neq`等价`=`和`!=`实现等于和不等于逻辑


- 校验空串
```java
String string
```
```xml
<if test="string != null and string != '' ">
    #{string}
</if>
```

- 不同数据库类型
```xml

<if test="_databaseId == 'oracle'">
    select sequence_name.nextval from dual
</if>

```

---
### foreach
> 循环
```java

List<String> stringList
```
```xml
<foreach collection="stringList" item="item" index="index" open="(" separator="," close=")">
    #{item}
</foreach>
```


```java
List<Clazz> clazzList
```
```xml
<foreach collection="clazzList" item="item" index="index" open="(" separator="," close=")">
    #{item.field}
</foreach>
```


### choose & when & otherwise
> 选择
```xml
<choose>
    <when test="name!= null">
      AND name like #{name}
    </when>
    <when test="sex!= null ">
      AND sex like #{sex}
    </when>
    <otherwise>
      AND valid = 1
    </otherwise>
</choose>
```




### trim
> 用于插入指定前后缀，并覆盖收尾的指定符号

- 动态排序
```xml
<trim prefix="order by" suffixOverrides=",">
    <if test="asc_desc != null and asc_desc != ''">
        order_column ${asc_desc},
    </if>
</trim>


```




### bind
> 变量（绑定）

```xml
<bind name="like_word" value="'%' + keywords + '%'" />


```

### where

- 在返回非空前添加`WHERE`前缀，若返回以`AND`或`OR`开头就去掉`WHERE`
```xml

<where>

</where>


<trim prefix="WHERE" prefixOverrides=" AND | OR ">

</trim>
```

### set

```xml

<update id="updateTable">
    update table_name
    <set>
        <if test="clazzField != null">column_name = #{clazzField}, </if>
    </set>
</update>

<trim prefix="SET" suffixOverrides=",">
</trim>


```

```java
    @Delete({"<script>",
      "delete from table_name ",
      "where column_name = #{clazzField} ",
      "</script>"})
    void deleteTable(TableClazz tableClazz);
```


---

## 语言驱动

- MyBatis >= 3.2

- org.apache.ibatis.scripting.xmltags.XmlLanguageDriver
- 实现LanguageDriver接口
```java
// 接口
public interface LanguageDriver {
    ParameterHandler createParameterHandler(MappedStatement mappedStatement, Object parameterObject, BoundSql boundSql);
    SqlSource createSqlSource(Configuration configuration, XNode script, Class<?> parameterType);
    SqlSource createSqlSource(Configuration configuration, String script, Class<?> parameterType);
}

// 实现类
package package;

public class LanguageDriverImpl implements LanguageDriver {
    ParameterHandler createParameterHandler(MappedStatement mappedStatement, Object parameterObject, BoundSql boundSql) {

    }
    SqlSource createSqlSource(Configuration configuration, XNode script, Class<?> parameterType) {

    }
    SqlSource createSqlSource(Configuration configuration, String script, Class<?> parameterType) {

    }
}
```
- 在mybatis-config.xml语言配置默认语言
```xml
<typeAliases>
    <typeAlias type="package.LanguageDriverImpl" alias="langImpl"/>
</typeAliases>
<settings>
    <setting name="defaultScriptingLanguage" value="langImpl"/>
</settings>
```

```xml
<select id="selectTable" lang="langImpl">
    SELECT * FROM table_name
</select>
```

```java
public interface TableMapper {

    @Lang(LanguageDriverImpl.class)
    @Select("SELECT * FROM table_name")
    List<TableClazz> selectTable();
}

```

- 使用 Apache Velocity 语言，参考 MyBatis-Velocity 项目


