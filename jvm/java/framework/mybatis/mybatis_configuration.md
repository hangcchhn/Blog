# MyBatis配置

## mybatis框架单独使用的配置文件
- mybatis-config.xml:
```xml
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE configuration
        PUBLIC "-//mybatis.org//DTD Config 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-config.dtd">
<configuration>

    <!-- 注意各个配置见的顺序 -->


    <!-- 属性 -->
    <!--<properties resource="jdbc.properties">-->
        <!--<property name="" value=""/>-->
    <!--</properties>-->
    <!-- 设置 -->
    <settings>
         <!-- 开启延迟加载 -->
         <!-- <setting name="lazyLoadingEnabled" value="true"/> -->
         <!-- 将积极加载改为消极加载:即按需加载 -->
         <!-- <setting name="aggressiveLazyLoading" value="false"/> -->

         <!--
         开启缓存
            一级缓存:默认开启
            二级缓存:手动开启
          -->
         <!-- <setting name="cacheEnabled" value="true"/> -->


         <!-- 开启下划线转驼峰的命名映射机制 -->
         <setting name="mapUnderscoreToCamelCase" value="true"/>

     </settings>


    <!-- 类型别名 -->
    <typeAliases>
        <!-- 类 -->
        <!-- <typeAlias type="hn.cch.entity.Xxx" alias="Xxx" /> -->
        <!-- 包：别名是类名的首字母大小写形式皆可 -->
        <package name="hn.cch.entity"/>
    </typeAliases>

    <!--类型处理-->
    <!--<typeHandlers></typeHandlers>-->

    <!--对象工厂-->
    <!--<objectFactory type=""></objectFactory>-->

    <!--插件-->
    <!--<plugins>-->
    <!--<plugin interceptor=""></plugin>-->
    <!--</plugins>-->

    <!-- 环境 -->
    <!--<environments default="development">-->
        <!--<environment id="development">-->
            <!-- 事务管理 -->
            <!--<transactionManager type="JDBC"/>-->
            <!-- 数据库源 -->
            <!--<dataSource type="POOLED">-->
                <!-- 数据库参数 -->
                <!--<property name="driver" value="com.mysql.jdbc.Driver"/>-->
                <!--<property name="url" value="jdbc:mysql://localhost:3306/mybatis"/>-->
                <!--<property name="username" value="root"/>-->
                <!--<property name="password" value="cch"/>-->

                <!-- 数据库属性 -->
                <!--<property name="driver" value="${jdbc.driver}"/>-->
                <!--<property name="url" value="${jdbc.url}"/>-->
                <!--<property name="username" value="${jdbc.username}"/>-->
                <!--<property name="password" value="${jdbc.password}"/>-->
            <!--</dataSource>-->
        <!--</environment>-->
    <!--</environments>-->

    <!--数据库标识厂商-->
    <!--<databaseIdProvider type=""></databaseIdProvider>-->

    <!-- 映射 -->
    <mappers>
        <!--配置文件-->
        <!-- <mapper resource="hn/cch/pojo/User.xml"/> -->
        <!-- <mapper resource="hn/cch/dao/UserDao.xml"/> -->
		<!-- <mapper resource="hn/cch/mapper/UserMapper.xml"/> -->

        <!--网络地址-->
        <!--<mapper url="" />-->

        <!-- class类 -->
        <!-- <mapper class="hn.cch.mapper.OrderMapper" /> -->


        <!-- package包 -->
        <package name="hn.cch.mapper"/>

    </mappers>
</configuration>
```



