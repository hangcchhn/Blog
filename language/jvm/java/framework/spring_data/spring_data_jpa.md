
# Spring Data JPA
数据库持久层


JPA（Java Persistence API——Java 持久化 API）

ORM（Object Relational Mapping——对象关系映射）


JPA是SUN公司推出的一套基于ORM的规范，
注意不是ORM框架，JPA并未提供ORM实现。

JPA依赖hibernate框架，hibernate框架是ORM框架，给JPA提供ORM实现

---

maven:pom.xml
```xml
<dependency>
    <groupId>org.springframework.data</groupId>
    <artifactId>spring-data-jpa</artifactId>
    <version>2.1.8.RELEASE</version>
</dependency>
<dependency>
    <groupId>org.hibernate</groupId>
    <artifactId>hibernate-entitymanager</artifactId>
    <version>5.0.7.Final</version>
</dependency>
<dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>5.1.6</version>
</dependency>
```
---


实体类中配置映射关系
```java
// 表名=类名
@Entity
@Table(name = "table_name")
public class TableClass implements Serializable {

    // 主键
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pk_id")
    private Integer pkId;

    // 列名=属性
    @Column(name = "column_name")
    private String columnField;
}
```

---


在maven工程的resources路径下创建一个名为META-INF的文件夹，在文件夹下创建一个名为persistence.xml的配置文件
```java
<?xml version="1.0" encoding="UTF-8"?>
<persistence xmlns="http://java.sun.com/xml/ns/persistence"
             xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
             xsi:schemaLocation="http://java.sun.com/xml/ns/persistence
             http://java.sun.com/xml/ns/persistence/persistence_2_0.xsd"
             version="2.0">
    <!--持久化单元-->
    <persistence-unit name="springdata" transaction-type="RESOURCE_LOCAL">
        <!--配置 JPA 规范的服务提供商 -->
        <provider>org.hibernate.jpa.HibernatePersistenceProvider</provider>
        <properties>
            <!-- 数据库驱动 -->
            <property name="javax.persistence.jdbc.driver"
                      value="com.mysql.jdbc.Driver"/>
            <!-- 数据库地址 -->
            <property name="javax.persistence.jdbc.url"
                      value="jdbc:mysql://localhost:3306/database"/>
            <!-- 数据库用户名 -->
            <property name="javax.persistence.jdbc.user" value="root"/>
            <!-- 数据库密码 -->
            <property name="javax.persistence.jdbc.password"
                      value="password"/>
            <!--JPA的核心配置中兼容hibernate的配置-->
            <property name="hibernate.show_sql" value="true"/>
            <property name="hibernate.format_sql" value="true"/>
            <property name="hibernate.hbm2ddl.auto" value="update"/>
        </properties>
    </persistence-unit>
</persistence>
```
---

```java
EntityManagerFactory factory = Persistence.createEntityManagerFactory("springdata");
EntityManager entityManager = factory.createEntityManager();
EntityTransaction transaction = entityManager.getTransaction();
transaction.begin();
Article article = entityManager.find(Article.class, 1);
//curd code
transaction.commit();
entityManager.close();
```
---


EntityManagerFactory接口主要用来创建EntityManager实例
EntityManagerFactory是一个线程安全的对象，并且其创建极其浪费资源，所以编程的时候要保持它是单例的。

在JPA规范中,EntityManager是操作数据库的重要API，他是线程不安全的，需要保持线程独有。重要方法说明：
- getTransaction: 获取事务对象
- persist：保存操作
- merge：更新操作
- remove：删除操作
- find/getReference：根据id查询



---

spring-boot:application.properties
```ini
# 设置数据库平台：指定数据库方言
# spring.jpa.database=MySQL
# spring.jpa.database-platform=org.hibernate.dialect.MySQL5InnoDBDialect
# 打印sql
spring.jpa.show-sql=true
# 格式化sql
spring.jpa.properties.hibernate.format_sql=true
# ddl创表语句：create或update
spring.jpa.hibernate.ddl-auto=update
```





---

- Repository

- CrudRepository

- PagingAndSortingRepository

- JpaRepository


Spring框架会使用JdkDynamicAopProxy为Repository接口生成一个代理对象
JdkDynamicAopProxy源码invoke方法
SimpleJpaRepository类
EntityManager对象


SpringData JPA底层还是用的JPA的API，
SpringData JPA只是对标准JPA操作进行了些封装


---
方法命名规则查询


查询方法以findBy开头
涉及条件查询时，条件的属性用条件关键字连接，条件属性首字母需大写








---


## JPQL(Java Persistence Query Language)

复杂业务逻辑可以使用@Query注解，结合JPQL语句方式完成查询


?index表示按位置来确定参数

@Param("name")定义参数名字
:name表示按名字来确定参数

集合
in :name
@Param("name") Collection<String> name

SPEL表达式
:#{#object.field}


使用本地sql查询
@Query("",nativeQuery=true)



Spring Data JPA动态查询通过JpaSpecificationExecutor接口实现