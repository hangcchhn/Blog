## JMX
> Java Management Extension
- Java管理扩展


```sh
java \
    -Dcom.sun.management.jmxremote.ssl=false \
    -Dcom.sun.management.jmxremote.authenticate=false \
    -Dcom.sun.management.jmxremote.port=10569  \
    -jar java.jar
```
