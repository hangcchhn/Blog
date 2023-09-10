# 单例模式
> Singleton Pattern


- 单例模式确保一个类只有一个实例，并提供一个全局访问点。

- 单例模式的实现方式：饿汉，饥汉，静态内部类，枚举类

- 饿汉单例模式是在类加载时创建单例对象
- 饥汉单例模式是在首次使用时创建单例对象

```java

public class SingletonClass {

    private SingletonClass() {

    }

    private static SingletonClass singletonClass = null;

    public synchronized getUniqueInstance(){
        if (singletonClass != null) {
            singletonClass = new singletonClass();
        }
        return singletonClass;
    }

}



```


---
