# Java命令

## 配置
```sh
vim /etc/profile

# java
export JAVA_HOME=/opt/java/jdk1.8.0_202
export JRE_HOME=$JAVA_HOME/jre
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

# java 11
export JAVA_HOME=/opt/java/jdk-11.0.9
export PATH=$JAVA_HOME/bin:$PATH

# java 17
export JAVA_HOME=/opt/java/jdk-17.0.3.1
export PATH=$JAVA_HOME/bin:$PATH


# maven
export MAVEN_HOME=/opt/maven/maven-3.3.9
export PATH=$MAVEN_HOME/bin:$PATH

# maven
export MAVEN_HOME=/opt/maven/maven-3.6.3
export PATH=$MAVEN_HOME/bin:$PATH

source /etc/profile
java -version


```


---

## 编译

```sh
# 编译源码文件成字节码文件
javac -encoding utf-8 -d ./class-path package.MainClass.java

# 运行字节码文件
java package/MainClass



# 反编译字节码文件成汇编代码
javap -c MainClass

```

---
- 生成jar包
```
jar --create --file jar-file.jar xxx.class


jar --create --file ./jar-path/jar-file.jar --main-class package.MainClass -C ./class-path .

java -jar ./jar-path/jar-file.jar

```
---

```sh
# -cp(classpath):加载依赖jar包，执行jar中打包指定的含有main方法的类
java -cp ./jar-path/jar-file.jar package.MainClass

# Windows系统中使用分号;连接多个jar包
java -cp .;* package.MainClass
java -cp .;library.jar;execute.jar package.MainClass
# Linux系统中使用冒号:连接多个jar包
java -cp .:* package.MainClass
java -cp .:library.jar:execute.jar package.MainClass
```

---
## 启动参数

- VM Options:`-Dxxx=yyy`
- Program arguments:`--xxx=yyy`
```sh
java -jar -Dxxx=yyy xxx.jar --xxx=yyy

```








