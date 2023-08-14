# MyBatis问题


---
- TypeException: Could not set parameters for mapping: ParameterMapping{property='column_name'...

- XxxMapper.xml
```xml
#{column_name,jdbcType=VARCHAR}
```









---

- Parameter 'xxx' not found. Available parameters are [arg1, arg0, param1, param2]

mapper接口


- 一个参数是可以直接写参数名
String only_param -> #{only_param}

- 多个参数时
1. 从N=0开始。按照顺序使用N、argN或param(N+1)
```xml
#{0}
#{arg0}
#{param(N+1)}
```
2. 指定参数引用名称

```java
import org.apache.ibatis.annotations.Param;

@Param("oneArg") String oneStr, @Param("twoArg") String twoStr
// #{oneArg}, #{twoArg}
```
