# 单例模式
> Singleton Pattern


单件模式确保一个类只有一个实例，并提供一个全局访问点。

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
