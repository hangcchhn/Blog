
maven settings.xml

<server>
    <id>10.44.4.246</id>
    <username>root</username>
    <password>123456</password>
</server>


pom.xml
<properties>
    <tomcat.path>/usr/tomcat/apache-tomcat-8.5.38</tomcat.path>
    <server.host>10.44.4.246</server.host>
</properties>




<build>
    <finalName>${project.artifactId}</finalName>
    <extensions>
        <extension>
            <groupId>org.apache.maven.wagon</groupId>
            <artifactId>wagon-ssh</artifactId>
            <version>2.8</version>
        </extension>
    </extensions>
    <plugins>
        <plugin>
            <groupId>org.codehaus.mojo</groupId>
            <artifactId>wagon-maven-plugin</artifactId>
            <version>1.0</version>
            <configuration>
                <serverId>${server.host}</serverId>

                <fromDir>target/</fromDir>
                <includes>${project.artifactId}.war</includes>
                <url>scp://${server.host}${tomcat.path}/webapps</url>

                <displayCommandOutputs>true</displayCommandOutputs>
                <commands>
                    <command>bash ${tomcat.path}/reboot_tomcat.sh</command>
                </commands>
            </configuration>
        </plugin>
    </plugins>
</build>



mvn clean package wagon:upload wagon:sshexec


<fromFile>target/${project.artifactId}.war</fromFile>
mvn wagon:upload-single		


