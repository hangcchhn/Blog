
# MyBatis生成器
> 生成mybatis使用的mapper文件(xml&java)


- maven项目:pom.xml
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
