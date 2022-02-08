# mvn cmd

## 通用
```sh
# settings.xml：maven配置文件名称

mvn -s settings_filepath command

```


## 创建


- 创建java base项目

```sh
mvn -B archetype:generate -DgroupId=hn.cch -DartifactId=java_base -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4
```

- 创建tomcat webapp项目

```
mvn -B archetype:generate -DgroupId=hn.cch -DartifactId=tomcat_webapp -DarchetypeArtifactId=maven-archetype-webapp -DarchetypeVersion=1.4
```




## 打包


```sh
mvn clean
mvn complie

mvn package -Dmaven.test.skip=true  

mvn install
```
## 发布
```sh
# module_name 子模块名

mvn release:prepare -pl module_name
mvn release:rollback -pl module_name

mvn release:perform -pl module_name
-DuseReleaseProfile=false

-Darguments="-DskipTests"

mvn wagon:upload

```