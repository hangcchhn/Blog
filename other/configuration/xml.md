# 可扩展标记语言(Extensible Markup Language,XML)


```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html SYSTEM "html.dtd">


```


## 可扩展标记语言架构(XML Schema Definition,XSD)
- 文件扩展名:.xsd
- html.xsd
```xsd
<?xml version="1.0"?>
<xs:schema
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    targetNamespace="http://www.w3school.com.cn"
    xmlns="http://www.w3school.com.cn"
    elementFormDefault="qualified">

    <xs:element name="html">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="head" type="xs:string"/>
                <xs:element name="body" type="xs:string"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>

</xs:schema>

```
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html SYSTEM "html.dtd">


```

- XSD对比DTD

## 替代文档类型定义(Document Type Define,DTD)
- 文件扩展名:dtd
- html.dtd
```dtd
<!ELEMENT html (head, body)>

```

```xml
<?xml version="1.0" encoding="UTF-8"?>
<html
    xmlns="http://www.w3school.com.cn"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="html.xsd">

</html>


```

## 超文本标记语言(Hyper Text Markup Language,HTML)
- 文件扩展名:html,htm
```html


```

## 标准通用标记语言(Standard Generalized Markup language,SGML)
- 文件扩展名:sgml,sgm