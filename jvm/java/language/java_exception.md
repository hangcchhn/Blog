# 异常
> Exception

- 创建异常需要保存运行时栈快照，开销很大，抛出异常和捕获异常开销都不大

---

- `Throwable`类：Java语言中所有错误或异常的超类
- `Error`错误类和`Exception`异常类是`Throwable`类的直接子类
- `Error`错误类：系统内部错误和资源耗尽错误，系统级别的错误程序无法处理
    - `OutOfMemoryError`
    - ``
    - ``
- `Exception`异常类：程序级别的异常需要程序处理

- `RuntimeException`运行时异常：IOException、SQLException
- 检查异常(checked exception)：除了`RuntimeException`运行时异常及其子类之外，所有直接继承`Exception`异常类的子类
    - 当程序出现这类异常，要么`try-catch`捕获异常，要么在声明方法时`throws`抛出异常
- 非检查异常：`Error`错误类及其子类和`RuntimeException`运行时异常及其子类
    - JVM自动抛出，运行应用程序忽略


---
- 应用程序出现异常时，虚拟机会自动生成异常对象并抛出
- 程序员可以手动创建异常对象，但需要手动抛出

- `throws e`抛出异常给上层调用的方法去处理，直到main方法都没有处理的异常就会由JVM处理，即打印异常信息和堆栈信息

- 重新父类方法的子类方法不能抛出的异常不能比父类方法抛出的异常大；接口同理。

- `try-catch`捕获异常，可以捕获`catch`子句中的异常类型及其子类，只能走一个`catch`子句处理异常

---

- 自定义异常需要提供全局常量：`serialVersionUID`
- 自定义异常需要手动创建并抛出
```java
public class MyException extends Exception {
    static final long serialVersionUID = 4300780585481249311L;

}

MyException exception = new MyException();
throw exception;
```



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
> java1.7
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


---


- Spring Boot使用`@ControllerAdvice & @ExceptionHandler`处理异常
