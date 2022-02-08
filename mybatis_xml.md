# MyBatis
> xml

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


- 测试方式
```java
// 读取mybatis配置文件
String resource = "mybatis-config.xml";
InputStream inputStream = Resources.getResourceAsStream(resource);
// 构建SqlSessionFactory
SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
// 打开SqlSession
SqlSession sqlSession = sqlSessionFactory.openSession();
// 根据SqlSession获取Mapper
ResultMapper resultMapper = sqlSession.getMapper(ResultMapper.class);
List<Result> resultList = resultMapper.selectResult();
// 关闭SqlSession
sqlSession.close();
```


## mybatis和spring框架整合使用的配置文件
- applicationContext.xml:
```
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:aop="http://www.springframework.org/schema/aop"
       xmlns:tx="http://www.springframework.org/schema/tx" xmlns:context="http://www.springframework.org/schema/context"
       xsi:schemaLocation="
        http://www.springframework.org/schema/beans
        http://www.springframework.org/schema/beans/spring-beans.xsd
        http://www.springframework.org/schema/aop
        http://www.springframework.org/schema/aop/spring-aop.xsd
        http://www.springframework.org/schema/tx
        http://www.springframework.org/schema/tx/spring-tx.xsd
        http://www.springframework.org/schema/context
        http://www.springframework.org/schema/context/spring-context.xsd
        ">

    <!--DataSource-->
    <context:property-placeholder location="classpath:jdbc.properties"/>
    <bean id="dataSource" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close">
        <property name="driverClassName" value="${jdbc.driver}"/>
        <property name="url" value="${jdbc.url}"/>
        <property name="username" value="${jdbc.username}"/>
        <property name="password" value="${jdbc.password}"/>
        <property name="maxActive" value="10"/>
        <property name="maxIdle" value="5"/>
    </bean>

    <!--SqlSession-->
    <bean id="sqlSessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean">
        <property name="configLocation" value="classpath:mybatis-config.xml"/>
        <property name="dataSource" ref="dataSource"/>
    </bean>

    <!--MapperScanner-->
    <bean class="org.mybatis.spring.mapper.MapperScannerConfigurer">
        <property name="basePackage" value="hn.cch.mapper"/>
        <property name="sqlSessionFactoryBeanName" value="sqlSessionFactory"/>
    </bean>

    <!--TransactionManager-->
    <bean id="dataSourceTransactionManager" class="org.springframework.jdbc.datasource.DataSourceTransactionManager">
        <property name="dataSource" ref="dataSource"/>
    </bean>
    <tx:advice id="transactionAdvice" transaction-manager="dataSourceTransactionManager">
        <tx:attributes>
            <tx:method name="save*" propagation="REQUIRED"/>

            <tx:method name="insert*" propagation="REQUIRED"/>
            <tx:method name="delete*" propagation="REQUIRED"/>
            <tx:method name="update*" propagation="REQUIRED"/>

            <tx:method name="select*" propagation="SUPPORTS" read-only="true"/>
            <tx:method name="find*" propagation="SUPPORTS" read-only="true"/>
            <tx:method name="get*" propagation="SUPPORTS" read-only="true"/>
        </tx:attributes>
    </tx:advice>
    <aop:config>
        <aop:pointcut id="transactionPointcut" expression="execution(* hn.cch.controller.*.*(..))"/>
        <aop:advisor advice-ref="transactionAdvice" pointcut-ref="transactionPointcut"/>
    </aop:config>

    <!--AnnotationDriven-->
    <tx:annotation-driven transaction-manager="dataSourceTransactionManager"/>
    <context:component-scan base-package="hn.cch">
        <context:include-filter type="annotation" expression="hn.cch.controller"/>
        <context:exclude-filter type="annotation" expression="hn.cch.service"/>
    </context:component-scan>

</beans>
```


- 测试方式
```java
ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
ResultMapper resultMapper = applicationContext.getBean(ResultMapper.class);
List<Result> resultList = resultMapper.selectResult();
```


## 生成mybatis使用的mapper文件（xml和java文件）

- pom.xml
```xml
<dependency>
    <groupId>org.mybatis.generator</groupId>
    <artifactId>mybatis-generator-core</artifactId>
    <version>1.3.2</version>
</dependency>
```

- generatorConfig.xml
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE generatorConfiguration
        PUBLIC "-//mybatis.org//DTD MyBatis Generator Configuration 1.0//EN"
        "http://mybatis.org/dtd/mybatis-generator-config_1_0.dtd">
<generatorConfiguration>

    <context id="Mapper2" targetRuntime="MyBatis3">
        <commentGenerator>
            <property name="suppressAllComments" value="true" />
            <property name="suppressDate" value="true"/>
        </commentGenerator>
        <!-- 配置mysql数据库连接 -->
        <jdbcConnection driverClass="com.mysql.jdbc.Driver"
                        connectionURL="jdbc:mysql://localhost:3306/iuds_boot"
                        userId="root"
                        password="chench">
        </jdbcConnection>

        <javaTypeResolver>
            <property name="forceBigDecimals" value="false" />
        </javaTypeResolver>

        <!-- 指定entity实体类生成的位置 -->
        <javaModelGenerator targetPackage="hn.cch.entity"
                            targetProject="./src/main/java">
            <property name="enableSubPackages" value="true" />
            <property name="trimStrings" value="true" />
        </javaModelGenerator>

        <!--指定mapper映射文件生成的位置 -->
        <sqlMapGenerator targetPackage="hn.cch.mapper"
                         targetProject="./src/main/resources">
            <property name="enableSubPackages" value="true" />
            <property name="trimStrings" value="true"/>
        </sqlMapGenerator>

        <!-- 指定mapper接口生成的位置 -->
        <javaClientGenerator type="XMLMAPPER"
                             targetPackage="hn.cch.mapper"
                             targetProject="./src/main/java">
            <property name="enableSubPackages" value="true" />
        </javaClientGenerator>


        <!-- 指定每个表table的生成策略 -->
        <table tableName="tbl_emp" domainObjectName="Employee"
                enableCountByExample="false"
                enableUpdateByExample="false"
                enableDeleteByExample="false"
                enableSelectByExample="false"
                selectByExampleQueryId="false"></table>    
        </table>
    </context>
</generatorConfiguration>
```

- 执行maven命令：`mvn mybatis-generator:generate`
