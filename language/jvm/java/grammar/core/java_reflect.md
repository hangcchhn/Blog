
# Java反射
> reflect

- 在程序运行时动态加载类并获取类的详细信息，从而操作类或对象的属性和方法。
- 反射是在JVM运行时读取方法区(Method Area)中类的字节码数据，反编译字节码数据获取类的详细信息。

- 通过反射机制调用方法时可以忽略权限检查，可能会破坏封装性而导致安全问题。

使用场景：
1. JDBC配置数据库驱动类
2. Servlet
3. Spring依赖注入和切面编程

---
## 动态代理

- ClassLoader类加载器
- Class类
- Field属性
- Method方法
- Constructor构造器
- Annotation注解
- Array数组
- Template泛型
- Primitive基本数据类型

- 已声明的:Declared


```java
import java.lang.reflect.*

Class clazz = object.getClass();
Class clazz = Java.class;
Class clazz=Class.forName("package.java");


Method[] methods = clazz.getDeclaredMethods();
Field[] fields = clazz.getDeclaredFields();
Constructor[] constructors = clazz.getDeclaredConstructors();

Java java = (Java) clazz.newInstance();

//无参构造器
Constructor constructor = clazz.getDeclaredConstructor();
Java java = (Java) constructor.newInstance();

```

---


- 委托模式：委托`MethodAccessor`接口处理执行`Method.invoke`方法
- 有两个类继承`MethodAccessorImpl`抽象类，实现`MethodAccessor`接口，
    - `DelegatingMethodAccessorImpl`委托实现类：实现本地实现和动态实现之间切换
    - `NativeMethodAccessorImpl`本地实现类
- 通过`acquireMethodAccessor`方法创建，在`reflectionFactory.newMethodAccessor`方法中，先调用`checkInitted`校验初始化
    - 本地实现：通过`NativeMethodAccessorImpl`创建`DelegatingMethodAccessorImpl`
    - 动态实现：通过`MethodAccessorGenerator`类的`generateMethod`方法生成

- 当反射调用次数达到inflationThreshold时，委托实现由本地实现切换成动态实现，可以通过noInflation关闭此优化过程
- 本地实现：调用底层C++语言实现的native方法执行目标函数
- 动态实现：通过动态生成字节码的方式直接调用目标方法
---
## 泛型
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