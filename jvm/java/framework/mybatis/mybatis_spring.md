
# MyBatis & Spring
- applicationContext.xml:
```xml
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

- mybatis-spring-1.3.2中取消了自动注入`SqlSessionFactory`和`SqlSessionTemplate`