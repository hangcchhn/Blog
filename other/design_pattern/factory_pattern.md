# 工厂模式
> Factory Pattern

- 工厂方法
工厂方法用来处理对象的创建，并将这样的行为封装在子类中。

```java
public interface Factory{
    public abstract Product factory_method(String type);
}
```

- 工厂模式
工厂方法模式定义了一个创建对象的接口，工厂方法让类把实例化推迟到子类。