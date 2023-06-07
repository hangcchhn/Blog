# Java类
> class

---
- 类
- 静态类
- 抽象类
- 接口
    - 没有构造器
- 注解


---


## 多态

- 子类继承父类，子类是父类的派生类型
- 重写：`@Override`，方法名字相同，参数列表相同，返回值类型可以是其派生类型
    - 访问权限不能比父类中的低
    -
- 重载：方法名字相同，参数列表和返回值类型不完全相同

---
## 静态static

- 实例变量
- 静态变量
- 实例代码块
- 静态代码块

```java
public class C {


    final static class C0 {
        //
    }

    static class C1 {
        // 静态内部类
    }

    static {
        // 静态代码块
    }

    {
        // 实例代码块
    }

    public final static String f0;// 静态常量
    public static String f1;// 静态变量
    private String f;// 实例变量



}

```


- 静态内部类

- `import static`


---
## 终态final

- final基本类型：值不能被修改
- final引用类型：引用不能被修改，即不能再指向其他对象，但指向的对象内容可以被修改
- final方法：不能被重载
- final类：不能被继承

- final类所有的方法都是终态(final)的，Java编译器会内联(inline)所有final方法

---

- 被`static final`修饰的
    - 成员变量：属于类，只能初始化，不能被修改
    - 方法：属于类，不能被重载
    - 内部类：属于类，不能被继承

---
## 继承 & 实现

```java
// 父类
class Sup {

}

// 子类
class Sub extends Sup {

}

// 接口
interface Api {

}

// 实现
class Impl implements Api {

}
```

---

## 修饰符

| 访问修饰符 | 同一类中 | 同一包下<br>的子类中 | 同一包下<br>的无关类中 | 其他包下<br>的子类中 | 其他包下<br>的无关类中 |
| :- | :- | :- | :- | :- | :- |
| 公有public | &#10004; | &#10004; | &#10004; | &#10004; | &#10004; |
| 受保护protected | &#10004; | &#10004; | &#10004; | &#10004;&#124;&#10006; | &#10006; |
| 无修饰符 | &#10004; | &#10004; | &#10004; | &#10006; | &#10006; |
| 私有private | &#10004; | &#10006; | &#10006; | &#10006; | &#10006; |


---

## 引用
> reference

- `Reference`抽象类

- `WeakReference`
- `SoftReference`
- `WeakReference`
- `WeakReference`
-