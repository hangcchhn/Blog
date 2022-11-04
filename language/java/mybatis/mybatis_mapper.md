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
- 使用and和or替代&&和||实现与和或逻辑
- 使用lt和gt替代<和>实现小于和大于逻辑
- 使用lte和gte替代<=和>=实现小于等于和大于等于逻辑
- 发现eq和neq等价=和!=实现等于和不等于逻辑


- 校验空串
```java
String string
```
```xml
<if test="string != null and string != '' ">
    #{string}
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


### choose
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

###


