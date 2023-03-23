# 泛型
> Generic

---
## 通配符

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
public class GenericClass<T> {
    private T t;
    private List<T> tList;
}
```
- interface
```java
public interface GenericInterface<T> {
    public T method(T t);
}


```
- method
```java
public class GeneralClass {
    public <T> T method(T t){
        return t;
    }
}
```