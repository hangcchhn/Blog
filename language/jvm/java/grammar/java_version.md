# java version
>


## jdk1.8

---
### lambda表达式
> lambda expression
> 匿名函数

- lambda表达式由匿名内部类演变而来
- 不能访问非final或effectively final的局部变量

- (parameters) -> expression
- (parameters) ->{ statements; }

```java
map.forEach((k, v) -> {
    // code
});


list.forEach(v -> {
    // code
});

Runnable runnable = ()-> System.out.println("runnable");

```


---
### 方法引用
> ::(双冒号):
- Method Reference
将类的方法当作参数传入流内部，
使流中的每个元素都执行该方法.

### 类型
1. 静态方法：class_name::static_method_name
2. 对象的实例方法：instance_name::method_name
3. 对象的超类方法： super_name::method_name
4. 类构造器： class_name::new
5. 数组构造器： array_name[]::new



单个参数可以省略括号

单行代码块可以使用语句表达式表示，也可以转化为方法引用

(没有参数的括号和参数传入，直接使用默认规则)
单个参数简单就不说了
多个参数：第一个参数是方法所属对象，其他参数就是方法调用参数



---
## jdk1.9



---

## jdk-11


- Option UseConcMarkSweepGC was deprecated in version 9.0 and will likely be removed in a future release.

```sh

# -XX:+UseConcMarkSweepGC
-XX:+UseG1GC

```

- Unrecognized VM option
```sh
# -XX:+UseCMSCompactAtFullCollection
# -XX:+UseFastAccessorMethods
```
