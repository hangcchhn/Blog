# 异常
> Exception

## Throwable
> Java语言中所有错误或异常的超类。

### Error
> 错误
系统内部错误和资源耗尽错误
Error是系统级别的，程序无法处理

### Exception
> 异常
Exception是程序级别的，需要程序处理

1. 运行时异常RuntimeException： IOException、SQLException

2. 检查异常CheckedException：





---

- 捕获异常并针对性处理：
```java
try {
    // code
}catch(Exception exception){
    // 打印异常堆栈信息
    exception.printStackTrace();
    // 输出异常级别日志：ExceptionUtils->commons-lang3:3.11+
    log.error(ExceptionUtils.getStackTrace(exception))
} finally {

}



```
---
## AutoCloseable
流对应的类都实现了自动关闭接口AutoCloseable
stream:创建流对象语句，如果多个，使用';'隔开
此语句总会执行语句执行对非空流对象进行关闭操作
- try-with-resources
```java

Stream stream = null
try {
    stream = new Stream();
    // code

}catch(Exception exception){

}finally{
    if (stream != null){
        try {
            stream.close();
        }catch(Exception exception){

        }
    }
}

try (Stream stream = new Stream();) {
    // code

}catch(Exception exception){

}
```


---
抛出异常的两种方式：

1. 用在函数上:可以跟多个
```java
public return method(Class param) throws Exception {
    //code
}
```

2. 用在函数内:只能跟一个
```java
public return method(Class param) {
    //code
    throw new Exception();
}
```



