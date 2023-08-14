# Maven Build


---

## 使用maven-jar-plugin打包

### maven-compiler-plugin

- 设置源码和目标的java|jdk|jre版本
- 设置编码格式

```xml

<properties>
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    <maven.compiler.source>1.8</maven.compiler.source>
    <maven.compiler.target>1.8</maven.compiler.target>
</properties>

# 或

<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-compiler-plugin</artifactId>
    <version>3.3</version>
    <configuration>
        <source>1.8</source>
        <target>1.8</target>
        <encoding>utf-8</encoding>
    </configuration>
</plugin>


<build>
    <finalName>${project.name}</finalName>
    <plugins>
        <!--<plugin></plugin>-->
    </plugins>
</build>

```

### maven-dependency-plugin
- 打包处理单独依赖

```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-dependency-plugin</artifactId>
    <version>3.0.2</version>
    <executions>
        <execution>
            <id>copy-dependencies</id>
            <phase>package</phase>
            <goals>
                <goal>copy-dependencies</goal>
            </goals>
            <configuration>
                <outputDirectory>${project.build.directory}/lib</outputDirectory>
                <overWriteReleases>false</overWriteReleases>
                <overWriteSnapshots>false</overWriteSnapshots>
                <overWriteIfNewer>true</overWriteIfNewer>
            </configuration>
        </execution>
    </executions>
</plugin>
```

### maven-jar-plugin

- 设置打包运行主类和依赖
- 排除重复的文件和文件夹

```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-jar-plugin</artifactId>
    <version>3.0.2</version>
    <configuration>
        <archive>
            <manifest>
                <mainClass>${main.class}</mainClass>
                <addClasspath>true</addClasspath>
                <classpathPrefix>lib/</classpathPrefix>
            </manifest>
        </archive>
        <excludes>
            <exclude>etc/</exclude>
            <exclude>jni/</exclude>
            <exclude>log/</exclude>
        </excludes>
    </configuration>
</plugin>

```

### maven-resources-plugin

- 打包是将配置文件放在包外


```xml

<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-resources-plugin</artifactId>
    <version>3.0.2</version>
    <executions>
        <execution>
            <id>copy-resources</id>
            <phase>validate</phase>
            <goals>
                <goal>copy-resources</goal>
            </goals>
            <configuration>
                <outputDirectory>${project.build.directory}/</outputDirectory>
                <resources>
                    <resource>
                        <directory>src/main/resources/</directory>
                        <filtering>true</filtering>
                        <includes>
                            <include>etc/*</include>
                            <include>jni/*</include>
                        </includes>
                        <excludes>
                            <exclude>log/*</exclude>
                        </excludes>
                    </resource>
                </resources>
            </configuration>
        </execution>
    </executions>
</plugin>


```


---

## 使用maven-assembly-plugin打包

- 将所有依赖打入一个单独的包内（有别于package打的包）
```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-assembly-plugin</artifactId>
    <version>3.1.0</version>
    <configuration>
        <descriptorRefs>
            <descriptorRef>jar-with-dependencies</descriptorRef>
        </descriptorRefs>
    </configuration>
</plugin>

mvn assembly:single

${artifactId}-${version}-jar-with-dependencies.jar

```




---

## 使用maven-shade-plugin打包

将所有依赖打入一个包内（包括package打的包的内容，将shade:shade命令执行绑定到package上）
```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-shade-plugin</artifactId>
    <version>3.2.1</version>
    <executions>
        <execution>
            <phase>package</phase>
            <goals>
                <goal>shade</goal>
            </goals>
        </execution>
    </executions>
</plugin>

```



### maven-compiler-plugin

- 设置源码和目标的java|jdk|jre版本
- 设置编码格式

```xml

<properties>
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    <maven.compiler.source>1.8</maven.compiler.source>
    <maven.compiler.target>1.8</maven.compiler.target>
</properties>

# 或

<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-compiler-plugin</artifactId>
    <version>3.3</version>
    <configuration>
        <source>1.8</source>
        <target>1.8</target>
        <encoding>utf-8</encoding>
    </configuration>
</plugin>



```


### maven-resources-plugin

- 打包是将配置文件放在包外


```xml

<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-resources-plugin</artifactId>
    <version>3.0.2</version>
    <executions>
        <execution>
            <id>copy-resources</id>
            <phase>validate</phase>
            <goals>
                <goal>copy-resources</goal>
            </goals>
            <configuration>
                <outputDirectory>${project.build.directory}/</outputDirectory>
                <resources>
                    <resource>
                        <directory>src/main/resources/</directory>
                        <filtering>true</filtering>
                        <includes>
                            <include>etc/*</include>
                            <include>jni/*</include>
                        </includes>
                        <excludes>
                            <exclude>log/*</exclude>
                        </excludes>
                    </resource>
                </resources>
            </configuration>
        </execution>
    </executions>
</plugin>


```



