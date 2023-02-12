# tomcat


## 目录结构
- bin
- conf
- logs
- webapps



---
## 在一个system上运行多个tomcat
```sh
# bin/setclasspath.sh
export JAVA_HOME=/usr/java/jdk1.8.0_202
export JRE_HOME=$JAVA_HOME/jre
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

# bin/catalina.bat
set "JAVA_HOME=C:\ProgramFiles\Java\jdk1.6.0_45"
set "JRE_HOME=C:\ProgramFiles\Java\jdk1.6.0_45\jre"

# bin/startup.bat
set "CATALINA_HOME=C:\ProgramFiles\Tomcat\apache-tomcat-6.0.53"
```

---

```sh
日志备份
cp catalina.out catalina.bak
echo -n  "" > catalina.out


cp /dev/null catalina.out


# 查看版本
./bin/version.sh
```




---
vim reboot_tomcat.sh
```sh
#!/bin/bash
TOMCAT_PATH=/usr/tomcat/apache-tomcat-8.5.38
WEBWAR_NAME=center
cd $TOMCAT_PATH
echo 'shutdowm tomcat'
./bin/shutdown.sh
echo 'shutdowm tomcat'
# TOMCAT_PID=`jps -l | grep 'org.apache.catalina.startup.Bootstrap' | grep -v grep | awk '{print $1}'`
TOMCAT_PID=`ps -ef | grep 'org.apache.catalina.startup.Bootstrap' | grep -v grep | awk '{print $2}'`
if [ -z "${pid}" ]; then
    echo null running
else
    echo 'tomcat pid:'$TOMCAT_PID
    echo $pid running
    kill -9 $pid
fi
echo 'remove tomcat cache'
rm -rf ./work/Catalina/localhost/$WAR_NAME
echo 'remove webapps rundir'
rm -rf ./webapps/$WAR_NAME
echo 'startup tomcat'
./bin/startup.sh
```
---


tomcat role user
- conf/tomcat-users.xml:
```xml
<tomcat-users>
    <role rolename="manager-gui"/>
    <role rolename="manager-script"/>
    <role rolename="manager-status"/>
    <role rolename="admin-gui"/>
    <role rolename="admin-script"/>
    <user username="chench" password="chench" roles="manager-gui,manager-script,manager-status,admin-gui,admin-script"/>
</tomcat-users>
```



---
- java.lang.IllegalArgumentException: Invalid character found in the request target. The valid characters are defined in RFC 7230 and RFC 3986

- 网址中的特殊字符需要进行编码
| 字符 | 编码 |
| :-: | :-: |
|   | %20 |
| # | %23 |
| % | %25 |
| & | %26 |
| + | %2B |
| . | %2E |
| / | %2F |
| : | %3A |
| = | %3D |
| ? | %3F |
| \ | %5C |


- 可以使用JavaScript中的encodeURIComponent('HTTP://www.xxx.com/')函数。

- 可以使用POST方法提交数据


- conf/catalina.properties
org.apache.tomcat.util.buf.UDecoder.ALLOW_ENCODED_SLASH=true

---
## 乱码问题

```jsp
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<meta http-equiv="content-type" content="text/html" charset="utf-8">
```

- conf/server.xml
```xml
<Connector port="8080" protocol="HTTP/1.1" connectionTimeout="20000" redirectPort="8443" URIEncoding="utf-8" />
```
---

- 在windows系统中使用idea配置tomcat:处理控制台的乱码问题

- bin/catalina.bat
```bat
set "JAVA_OPTS=%JAVA_OPTS% %JSSE_OPTS% -Dfile.encoding=utf-8"
```

- bin/idea.exe.vmoptions
```
-Dfile.encoding=utf-8
```

---
