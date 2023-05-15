# Spring IoC
- 控制反转IoC(Inversion of Control)

---
## 依赖注入的方式
- set方法注入

- 构造器注入

- 自动装配（注解模式）：优先级低于set方法注入和构造器注入
```java

@Component
public class Xxx {

    @Autowired
    private Yyy yyy;
}

```

---
- 按类型注入@Autowired:
如果使用@Autowired注解装配的类型有多个实例，
可以使用@Primary注解指定一个默认的实例注入，
也可以使用@Qualifier注解指定注入实例的名称
```java
public class Demo {

    @Qualifier(value="")
    @Autowired(required=true) // 是否允许为空
    private Test test;
}


```


- 按名称注入@Resource:
可以根据name按名称注入，也可以按type按类型注入，默认按名称注入，注入实例可以为空
```java
public class Demo {
    @Resource(name="", type="")
    private Test test;
}

```

---
### 子类依赖注入父类属性：

1. public修饰父类属性
```java
@Autowired
public void superAttribute(){
    super.attributes = attributes;
}

```
2. protected修饰父类属性

```java
@Lazy
@Autowired
protected Attribute attributes;
```


---
## ApplicationContext
- GenericApplicationContext
- AnnotationConfigApplicationContext
- ClassPathXmlApplicationContext
- FileSystemXmlApplicationContext