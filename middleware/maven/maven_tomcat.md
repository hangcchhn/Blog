# maven tomcat
> maven集成并运行tomcat

## 使用maven构建war包项目



---

## 使用maven对应tomcat插件运行war包项目

- pom.xml
```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-compiler-plugin</artifactId>
    <version>3.3</version>
    <configuration>
        <source>${java.version}</source>
        <target>${java.version}</target>
        <encoding>${source.encoding}</encoding>
    </configuration>
</plugin>
<plugin>
    <groupId>org.apache.tomcat.maven</groupId>
    <artifactId>tomcat7-maven-plugin</artifactId>
    <version>2.2</version>
    <configuration>
        <port>${tomcat.port}</port>
        <path>${tomcat.path}</path>
    </configuration>
</plugin>

```

```sh
mvn tomcat7:run
```