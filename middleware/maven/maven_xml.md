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


</project>

```

---
- 打包：设置主类
```

<build>
    <plugins>
        <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-shade-plugin</artifactId>
            <version>2.4.3</version>
            <executions>
                <execution>
                    <goals>
                        <goal>shade</goal>
                    </goals>
                    <configuration>
                        <transformers>
                            <transformer
                                    implementation="org.apache.maven.plugins.shade.resource.ManifestResourceTransformer">
                                <manifestEntries>
                                    <Main-Class>${main.class}</Main-Class>
                                    <X-Compile-Source-JDK>${java.version}</X-Compile-Source-JDK>
                                    <X-Compile-Target-JDK>${java.version}</X-Compile-Target-JDK>
                                </manifestEntries>
                            </transformer>
                        </transformers>
                    </configuration>
                </execution>
            </executions>
        </plugin>
    </plugins>
</build>
```



---
## settings.xml


```xml


```




