# maven xml

> 配置文件



---
## pom.xml
> root:project
- groupId
- artifactId
- version
- properties


---
- dependencies：
    - 单模块总项目依赖包的名称和版本
    - 多模块子项目引入包的名称

- dependencyManagement：
    - 多模块父项目声明包的版本

- 类似的还有
    - dependency:dependencies|dependencyManagement
    - plugin:plugins｜pluginManagement

---

```xml
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>hn.cch</groupId>
    <artifactId>spring_boot_start</artifactId>
    <version>1.0-SNAPSHOT</version>

    <packaging>pom</packaging>

    <properties>
        <junit.version>4.12</junit.version>
    </properties>

    <dependencies>
        <dependency>
            <groupId>junit</groupId>
            <artifactId>junit</artifactId>
            <version>${junit.version}</version>
            <scope>test</scope>
        </dependency>
    </dependencies>




</project>

```




---
## settings.xml


```xml


```




