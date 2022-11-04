# maven tomcat
> maven集成并运行tomcat

- 配置(pom.xml)
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



- 运行(cmd,sh)
```sh
mvn tomcat7:run
```