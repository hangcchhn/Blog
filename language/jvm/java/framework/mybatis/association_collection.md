
# mybatis框架的association和collection标签


---
- sql
```sql
create table tbl_teacher
(
    t_id   int auto_increment,
    t_name varchar(32) not null,
    constraint tbl_teacher_pk
        primary key (t_id)
);

create table tbl_student
(
    s_id   int auto_increment,
    s_name varchar(32) not null,
    t_id   int         not null,
    constraint tbl_student_pk
        primary key (s_id)
);

```
---

- java
```java
public class Student {
    private Integer sId;
    private String sName;
    private Teacher teacher;
    // 省略get和set方法
}

public class Teacher {
    private Integer tId;
    private String tName;
    private List<Student> studentList;
    // 省略get和set方法
}

```
---

## 对象属性（一对一关系）使用`association`标签

```xml
<resultMap id="studentMap" type="xxx.entity.Student">
    <result property="sId" javaType="java.lang.Integer" column="s_id" jdbcType="INTEGER" ></result>
    <result property="sName" javaType="java.lang.String" column="s_name" jdbcType="VARCHAR" ></result>

    <association property="teacher" javaType="xxx.entity.Teacher">
        <result property="tId" javaType="java.lang.Integer" column="t_id" jdbcType="INTEGER" ></result>
        <result property="tName" javaType="java.lang.String" column="t_name" jdbcType="VARCHAR" ></result>
    </association>

</resultMap>
```



---
- `resultMap`：Mapper类中resultMap标签的id

- StudentMapper
```xml

<resultMap id="studentMap" type="xxx.entity.Student">
    <result property="sId" javaType="java.lang.Integer" column="s_id" jdbcType="INTEGER" ></result>
    <result property="sName" javaType="java.lang.String" column="s_name" jdbcType="VARCHAR" ></result>

    <association property="teacher" javaType="xxx.entity.Teacher"
    resultMap="xxx.mapper.TeacherMapper.teacherMap"></association>

</resultMap>

```


---
- `column`：查询结果的列名（别名）
- `select`：Mapper类中select标签的id


- StudentMapper
```xml
<resultMap id="studentMap" type="xxx.entity.Student">
    <result property="sId" javaType="java.lang.Integer" column="s_id" jdbcType="INTEGER" ></result>
    <result property="sName" javaType="java.lang.String" column="s_name" jdbcType="VARCHAR" ></result>

    <association property="teacher" javaType="xxx.entity.Teacher"
    column="t_id" select="xxx.mapper.TeacherMapper.getTeacherById"></association>

</resultMap>
<select id="getAllStudent" resultMap="studentMap">
    select s_id, s_name, t_id from tbl_student
</select>

<select id="getStudentListByTeacherId" resultMap="studentMap">
    select s_id, s_name from tbl_student where t_id = #{teacherId}
</select>

```



---
## 集合属性（一对多关心）使用`collection`标签
- `ofType`：指定集合元素类型
- TeacherMapper
```xml
<resultMap id="teacherMap" type="xxx.entity.Teacher">
    <result property="tId" javaType="java.lang.Integer" column="t_id" jdbcType="INTEGER" ></result>
    <result property="tName" javaType="java.lang.String" column="t_name" jdbcType="VARCHAR" ></result>

    <collection property="studentList" ofType="xxx.entity.Student"
    column="t_id" select="xxx.mapper.StudentMapper.getStudentListByTeacherId" ></collection>

</resultMap>

<select id="getAllTeacher" resultMap="teacherMap">
    select t_id, t_name from tbl_teacher
</select>

<select id="getTeacherById" resultMap="teacherMap">
    select t_id, t_name from tbl_teacher where t_id = #{id}
</select>

```
