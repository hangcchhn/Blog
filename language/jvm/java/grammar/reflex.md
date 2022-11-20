
# 反射
> reflex

动态语言是指程序在运行时可以改变其结构
新的函数可以引进，已有的函数可以被删除等结构上的变化。

反射机制:动态获取对象属性以及动态调用对象方法

优点：代码灵活
缺点：性能消耗

使用场景：
1.jdbc配置数据库驱动类
2.Servlet
3.spring依赖注入和切面编程

---
## 动态代理

package:java.lang.reflect

- ClassLoader类加载器
- Class类
- Field属性
- Method方法
- Constructor构造函数
- Annotation注解
- Array数组
- Template泛型


```java
Class clazz = object.getClass();
Class clazz = Java.class;
Class clazz=Class.forName("package.java");


Method[] methods = clazz.getDeclaredMethods();
Field[] fields = clazz.getDeclaredFields();
Constructor[] constructors = clazz.getDeclaredConstructors();

Java java = (Java) clazz.newInstance();

//无参构造函数
Constructor constructor = clazz.getDeclaredConstructor();
Java java = (Java) constructor.newInstance();

```






