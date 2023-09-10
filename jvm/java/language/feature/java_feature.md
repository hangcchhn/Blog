# Java特色

---
## lambda表达式
> lambda expression

- 匿名函数：lambda表达式由匿名内部类演变而来
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
## 方法引用
> Method Reference

- 双冒号(::)
- 将类的方法当作参数传入流内部，使流中的每个元素都执行该方法。

### 类型
- 静态方法:class_name::static_method_name
- 对象的实例方法:instance_name::method_name
- 对象的超类方法:super_name::method_name
- 类构造器:class_name::new
- 数组构造器:array_name[]::new



- 单个参数可以省略括号
- 单行代码块可以使用语句表达式表示，也可以转化为方法引用
- 没有参数的括号和参数传入，直接使用默认规则
- 单个参数简单就不说了
- 多个参数:第一个参数是方法所属对象，其他参数就是方法调用参数


---
## 函数接口
> Function Interface
- 函数接口`@FunctionInterface`注解
- 有且仅有一个`abstract`方法的接口，
- 不包含`default`和`static`方法
- 来自超类`Object`的也不算

---

## 接口类型
> `java.util.function`
- `Runnable`：`() -> void`
- 消费者接口：`accept`方法
    - `Consumer`：`(P) -> void`
- 供应者接口：`get`方法
    - `Supplier`：`() -> void`
- 谓词型接口：`test`方法
    - `Predicate`：`() -> R`
- 功能型接口：`apply`方法
    - `Function`：`(P) -> R`
    - `BiFunction`：`(P1, P2) -> R`
---
- 类不支持多继承，接口允许多继承
- 接口的default和static方法
- java<1.8 接口不支持静态成员

---
### Optional

- `Optional<T>`
```java



```



