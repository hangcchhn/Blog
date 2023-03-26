# Annotation
> 注解



```java

@Target({ ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface Annotation {
}

```


---
## 元注解



- ElementType

- RetentionPolicy


---
## 继承

```java

public @interface SuperAnnotation {

}

@SuperAnnotation
public @interface ExtendsAnnotation {

}


```



---
## 合并
