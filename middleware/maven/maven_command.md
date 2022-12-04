# mvn cmd


```sh
# maven_settings_xml_path:maven配置文件（settings.xml）的绝对路径

mvn -s maven_settings_xml_path command

```

---
## 项目创建


- 创建java base项目

```sh
mvn -B archetype:generate -DgroupId=hn.cch -DartifactId=java_base -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4
```

- 创建tomcat webapp项目

```
mvn -B archetype:generate -DgroupId=hn.cch -DartifactId=tomcat_webapp -DarchetypeArtifactId=maven-archetype-webapp -DarchetypeVersion=1.4
```





## 项目打包


```sh
mvn clean
mvn complie

mvn package

mvn install

mvn deploy

mvn site
mvn test





mvn -Dmaven.test.skip=true cmd

-DskipTests:不执行测试用例，但编译测试用例类生成相应的class文件至target/test-classes下

-Dmaven.test.skip=true:不执行测试用例，也不编译测试用例类



```
## 项目发布
```sh
# module_name 子模块名

mvn release:prepare -pl module_name
mvn release:rollback -pl module_name

mvn release:perform -pl module_name
-DuseReleaseProfile=false

-Darguments="-DskipTests"

-DautoVersionSubmodules=true
-DreleaseVersion=1.0
-DdevelopmentVersion=1.0-SNAPSHOT



mvn release:prepare -Darguments="-DskipTests"
mvn release:rollback
mvn release:perform -Darguments="-DskipTests" -DuseReleaseProfile=false

mvn wagon:upload

```




