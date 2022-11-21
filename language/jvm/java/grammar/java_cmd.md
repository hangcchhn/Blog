

```sh
vim /etc/profile

# java
export JAVA_HOME=/usr/java/jdk1.8.0_202
export JRE_HOME=$JAVA_HOME/jre
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

# java 11
export JAVA_HOME=/usr/java/jdk-11.0.9
export PATH=$JAVA_HOME/bin:$PATH

# java 17
export JAVA_HOME=/usr/java/jdk-17.0.3.1
export PATH=$JAVA_HOME/bin:$PATH


# maven
export MAVEN_HOME=/usr/maven/maven-3.3.9
export PATH=$MAVEN_HOME/bin:$PATH

# maven
export MAVEN_HOME=/usr/maven/maven-3.6.3
export PATH=$MAVEN_HOME/bin:$PATH

source /etc/profile
```
---

```
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.7.0_60/bin/java 300
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk1.7.0_60/bin/javac 300
sudo update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/jdk1.7.0_60/bin/jar 300
sudo update-alternatives --install /usr/bin/javah javah /usr/lib/jvm/jdk1.7.0_60/bin/javah 300
sudo update-alternatives --install /usr/bin/javap javap /usr/lib/jvm/jdk1.7.0_60/bin/javap 300

sudo update-alternatives --config java

java -version
```
---


设置特定jdk
export JAVA_HOME=/usr/java/jdk-11.0.9


执行jar中打包指定的含有main方法的类
java -jar *.jar

1.mainClass
2.spring boot



加载依赖后指定含有main方法的类启动
-cp=-classpath
多个jar包之间连接符：Windows上分号“;”,Linux下使用“:”。
java -cp .;path/name.jar all_package_name.main_class_name
java -cp .:path/name.jar all_package_name.main_class_name


# Windows
java -cp .;* hn.cch.engine.boot.Main
java -cp .;common_module-1.0-SNAPSHOT.jar;engine_module-1.0-SNAPSHOT.jar;client_module-1.0-SNAPSHOT.jar;server_module-1.0-SNAPSHOT.jar hn.cch.engine.boot.Main
# Linux
java -cp .:* hn.cch.engine.boot.Main
java -cp .:common_module-1.0-SNAPSHOT.jar:engine_module-1.0-SNAPSHOT.jar:client_module-1.0-SNAPSHOT.jar:server_module-1.0-SNAPSHOT.jar hn.cch.engine.boot.Main




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

解决CPU过高：
ps H -eo pid,tid,%cpu | grep pid

top -p pid -H

jstack pid

jstack -l tid


---

编译
1.javac -encoding utf-8 -d . Class.java
编译源码文件成字节码文件

2.java Class
运行字节码文件

3.javap -c Class
反编译字节码文件成汇编代码


---

jps：Java Process Status
jps -l 查看java进程状态
pid（进程id） class（类name）




jstat:垃圾回收

可带刷新时间间隔动态打印进程状态信息



堆内存：
占比：jstat -gcutil pid
大小：jstat -gc pid

新生代：jstat -gcnew pid
老年代：jstat -gcold pid


jinfo:基本信息

jstack：线程

jstack pid



jmap：内存


jmap -heap pid




jmap -dump:-dump:[live,] format=b, file=filename.hprof pid

jhat:Java Heap Analyse Tool
jhat -port 7000 filename.hprof
http://localhost:7000







---


## JConsole



- Memory
    - Heap:Eden Space,Survivor Space, Tenured Gen
    - Non-Heap:Metaspace(Perm Gen) Code Cache
    - 垃圾回收GC: 
        - 新生代：多少秒一次 seconds on Copy (公共多少次 collections)
        - 老年代：多少秒一次 seconds on MarkSweepCompact (公共多少次 collections)
        - PS MarkSweep(mirror gc)
        - PS Scavenge(full gc)


---
