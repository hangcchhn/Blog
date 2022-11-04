# Maven

## 一、基础

Apache开发的管理项目的构建，报告和文档的软件项目管理工具

### 1.依赖管理

jar包管理，maven仓库

### 2.项目构建

编译，测试，打包，部署

## 二、配置

### 1.环境变量
- JAVA_HOME
    - JRE_HOME
- MAVEN_HOME
    - M2_HOME

- maven 3.2.5 -> jdk 1.6
- maven 3.3.9 -> jdk 1.8

- maven指定jdk版本
```xml
<profile>
    <id>1.8</id>
    <activation>
        <activeByDefault>true</activeByDefault>
        <jdk>1.8</jdk>
    </activation>
    <properties>
        <maven.compiler.source>1.8</maven.compiler.source>
        <maven.compiler.target>1.8</maven.compiler.target>
        <maven.compiler.compilerVersion>1.8</maven.compiler.compilerVersion>
    </properties>
</profile>
```

### 2.本地仓库
```xml
<!-- 本地仓库路径配置 -->
<localRepository>maven_local_repo_path</localRepository>
```

```sh
# 导入jar文件到本地仓库
mvn install:install-file -Dfile=xxx.jar -DgroupId=hn.cch -DartifactId=name -Dversion=1.0.0 -Dpackaging=jar

```






### 3.仓库镜像
```xml
<!-- 配置阿里镜像 -->
<mirror>
    <id>aliyun_maven</id>
    <mirrorOf>*</mirrorOf>
    <name>aliyun_maven</name>
    <url>https://maven.aliyun.com/repository/public</url>
</mirror>

```


### 4.私服仓库
- nexus
```sh
# nexus-3.9.0-01-unix.tar.gz
tar -zxvf nexus-3.9.0-01-unix.tar.gz
cd nexus-3.9.0-01
./bin/nexus run
```

```xml
<!-- nexus -->

```
---
## 项目结构
- src
    - main
        - java
        - resources
        - webapp
    - test
        - java
        - resources
- target
- pom.xml
