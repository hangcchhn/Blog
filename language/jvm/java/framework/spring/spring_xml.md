# Spring XML配置



- beans

- tx

- aop











---
## 省略service层使controller层直接调用mapper层
- Spring:applicationContext.xml
```xml
<context:component-scan base-package="hn.cch">
    <context:include-filter type="annotation" expression="hn.cch.controller"/>
    <context:exclude-filter type="annotation" expression="hn.cch.service"/>
</context:component-scan>
```
- Spring MVC:dispatcher-config.xml
```xml
<context:component-scan base-package="hn.cch">
    <context:include-filter type="annotation" expression="hn.cch.controller"/>
    <context:exclude-filter type="annotation" expression="hn.cch.service"/>
</context:component-scan>
```
