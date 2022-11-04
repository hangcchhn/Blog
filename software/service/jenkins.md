# Jenkins



1. tomcat:
    - `./webapps/jenkins.war`
    - `./bin/startup.sh`


2. jetty:
    - `java -jar jenkins.war`
    - `cd ~/.jenkins/`






jenkins.war



svn或git仓库地址后加上@HEAD获取代码的最新版本


- jenkins-2.346.3 -> jkd1.8

- http://192.168.10.153:8800/
    - 用户:admin
    - 密码:chench


- 停止：http://192.168.10.153:8800/exit
- 重启：http://192.168.10.153:8800/restart
- 重载：http://192.168.10.153:8800/reload

---

## 安装插件
> 安装插件注意系统时间

- http://mirrors.tuna.tsinghua.edu.cn/jenkins/updates/update-center.json

```
cd ~/.jenkins/updates
sed -i 's/https:\/\/updates.jenkins.io\/download/https:\/\/mirrors.tuna.tsinghua.edu.cn\/jenkins/g' default.json
sed -i 's/http:\/\/www.google.com/https:\/\/www.baidu.com/g' default.json
```


- cloudbees-folder
```sh
cd WEB-INF\detached-plugins
wget http://ftp.icm.edu.pl/packages/jenkins/plugins/cloudbees-folder/latest/cloudbees-folder.hpi

```

- Maven Integration

编译打包后生成的jar路径是:~/.jenkins/workspace/任务名称



- Publish Over SSH

需要配置ssh的免密钥登陆
注意这里配置远程路径

在任务中配置build


---
Post Steps:`export BUILD_ID=dontKillMe`


---
```sh
#!/bin/bash
export BUILD_ID=dontKillMe

work=/root/.jenkins/workspace/

name=spring_boot_security_rest
path=/root/jenkins/project/
mkdir -p ${path}${name}

old_pid=`ps aux  | grep ${name} |grep -v grep | awk '{print $2}'`
if [ -z "${old_pid}" ]; then
    echo null running
else
    echo $old_pid running
    kill -9 ${old_pid}
    sleep 3
fi

cp -f ${work}${name}/target/${name}-*.jar ${path}${name}
cp -f ${work}${name}/startup.sh ${path}${name}

chmod 755 ${path}${name}/startup.sh
sed -i "s/\r//" ${path}${name}/startup.sh

chown -R chench:chench ${path}${name}
chmod -R 755 ${path}${name}

su - chench -c "${path}${name}/startup.sh"

new_pid=`ps aux | grep ${name} |grep -v grep | awk '{print $2}'`
if [ -z "${new_pid}" ]; then
    echo "spring boot ${name} build start error"
    exit -1
else
    echo "spring boot ${name} process id is ${new_pid}"
    exit 0
fi


sudo chown -R www:www $path
sudo chmod -R 755 $path
sudo su - www -c 'shell.sh'



cat >text.txt <<EOF
hello world
/$

EOF


nohup java -jar /home/data/tamp/*.jar  &

```



---
## maven spring boot ssh

```sh
#!/bin/bash
path=/home/chench/
name=spring_boot_security_rest

pids=`pgrep -f ${name}-*.jar`
for pid in ${pids}
do
    kill -9 $pid
    sleep 3
done

sudo chown -R chench:chench ${path}${name}
sudo chmod -R 755 ${path}${name}

cd ${path}${name}
nohup java -jar -Dspring.profiles.active=test ${name}-*.jar > /dev/null 2>&1 &

sleep 3
exit 0
```

---
```
- http://ip:port/generic-webhook-trigger/invoke?token=<你的job里面的令牌>