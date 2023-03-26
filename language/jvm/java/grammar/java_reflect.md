
# 反射
> reflect

动态语言是指程序在运行时可以改变其结构
新的函数可以引进，已有的函数可以被删除等结构上的变化。

反射机制:动态获取对象属性以及动态调用对象方法

优点：代码灵活
缺点：性能消耗

使用场景：
1. jdbc配置数据库驱动类
2. Servlet
3. spring依赖注入和切面编程

---
## 动态代理

- ClassLoader类加载器
- Class类
- Field属性
- Method方法
- Constructor构造函数
- Annotation注解
- Array数组
- Template泛型
- Primitive:基本数据类型


```java
import java.lang.reflect.*

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

---

- Type
- 实现类:sun.reflect.generics.reflectiveObjects.*Impl

---
### ParameterizedType:参数化类型
```java
public interface ParameterizedType extends Type {
    // 嵌套<>只取最外层<>
    Type[] getActualTypeArguments();
    // 原始类型:Class<?>=List.class
    Type getRawType();
    // 原始类型所属类型:getRawType().getDeclaringClass()
    Type getOwnerType();
}
```


### TypeVariable:类型变量
```java

public interface TypeVariable<D extends GenericDeclaration> extends Type {
   //获得上限：若无extends，默认为Object
    Type[] getBounds();
    //获取泛型声明
    D getGenericDeclaration();
    //获得名称:T,E,K,V
    String getName();
    //获得注解上限
    AnnotatedType[] getAnnotatedBounds()
}

```


### WildcardType
- 用于表示无界通配符<?>类型的表达式的泛型参数
```java
public interface WildcardType extends Type {
    // 获取上限类型数组
    Type[] getUpperBounds();
    // 获取下限类型数组
    Type[] getLowerBounds();
}
```
### GenericArrayType:泛型数组类型
- `List<String>[]`
```java

public interface GenericArrayType extends Type {
    // 获取泛型元素类型
    Type getGenericComponentType();
}
```







## 桥接方法
> Bridge Method
- 一个类继承了一个范型类或者实现了一个范型接口
- 由编译器生成的方法，方法上有synthetic修饰符
```java

public interface Parent<T> {
    T method(T t);
}

public class ParentImpl implements Parent<String> {
    public String method(String string) {
        return string;
    }
}

public class ParentTest() {

}


```
- org.springframework.core.BridgeMethodResolver