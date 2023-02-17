

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
-
Program arguments:`--xxx=yyy`
```sh
java -jar -Dxxx=yyy xxx.jar --xxx=yyy

```
---
## 远程调试
```
java \
    -Dcom.sun.management.jmxremote.ssl=false \
    -Dcom.sun.management.jmxremote.authenticate=false \
    -Dcom.sun.management.jmxremote.port=10569  \
    -jar mvn_pkg.jar

java -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.port=10569 -jar mvn_pkg.jar

```
---

## 解决CPU过高:
```sh
ps H -eo pid,tid,%cpu | grep pid

top -p pid -H

jstack pid

jstack -l tid
```





---

## jps:Java Process Status

```sh
jps -l
# pid package.MainClass
```


---
## jstat:垃圾回收

- 可带刷新时间间隔动态打印进程状态信息

```sh
jstat pid interval count

jstat -gcutil pid
jstat -gc pid

# 新生代
jstat -gcnew pid
# 老年代
jstat -gcold pid


```


## jinfo:基本信息

---
## jstack:线程

- jstack pid



## jmap:内存

```sh
jmap -heap pid

jmap -dump:-dump:[live,] format=b, file=filename.hprof pid

```
---
## jhat:Java Heap Analyse Tool

```sh
jhat -port 7000 filename.hprof

```
- http://localhost:7000







---


## JConsole



- Memory
    - Heap:Eden Space,Survivor Space, Tenured Gen
    - Non-Heap:Metaspace(Perm Gen) Code Cache
    - 垃圾回收GC: 
        - 新生代:多少秒一次 seconds on Copy (公共多少次 collections)
        - 老年代:多少秒一次 seconds on MarkSweepCompact (公共多少次 collections)
        - PS MarkSweep(mirror gc)
        - PS Scavenge(full gc)


---

