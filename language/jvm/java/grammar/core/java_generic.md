# Java泛型
> generic


- jdk 1.5新增泛型，本质是参数化类型，类型安全检测机制从运行时提前到编译器

- 解决在编写通用代码时的类型安全性和代码复用性问题

- 原始类型(Raw Type):无限定的类型变量使用`Object`替换
- 限定类型

- 泛型类型擦除:在编译器使用原始类型替换泛型类型，字节码(.class)文件


- 字节码(.class)文件没有泛型类型信息，JVM中也没有

- Java泛型 & C++模板

---
## 类型参数

- `<T>`:类型Type
- `<E>`:集合元素Element
- `<K, V>`:键值对Key,Value

### 无界通配符
- `<?>`:
- 上界(T的子类):`<? extends T>`
- 下界(T的父类):`<? super T>`

---
## 使用方式
- class
```java
// 泛型类
public class GenericClass<T> {
    private T t;
}
```
- interface
```java
// 泛型接口
public interface GenericInterface<T> {
    public T method(T t);
}


```
- method
```java
// 常规类
public class GeneralClass {
    // 泛型方法
    public <T> T method(T t){
        return t;
    }
}
```