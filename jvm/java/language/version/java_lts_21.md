

## 记录模式
> Record Pattern

- `final class`

```java
record Record(String s) {}

// Java 16
if (o instanceof Record r) {
    // r.s
}

// Java 21
if (o instanceof Record(String s)) {
    // s
}

```


## 模式匹配
> Pattern Match
```java

// Java 14
switch (o) {
    case 1 -> s;
}

// Java 21
switch (o) {
    case String s -> s;
}

```


## 虚拟线程
> Visual Thread


