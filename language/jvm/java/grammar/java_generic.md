# 泛型
> Generic


- jdk 1.5新增泛型
- 用类型或者方法操作各种类型的对象从而提供编译期的类型安全功能
- JVM中没有泛型类型，字节码文件中存放泛型信息

- 原始类型(Raw Type)
- 限定类型

- 泛型类型擦除:


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