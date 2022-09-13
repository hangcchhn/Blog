# scala

- 运行在JVM上
- 函数式编程

---
- kafka
- spark


- jdk & scala version  compatibility
https://docs.scala-lang.org/overviews/jdk-compatibility/overview.html

- windows 10 & jdk 17.0.2 & scala 2.13.6



---
### 命令
```sh
scala
scala> :help
```
- :quit

---
### 类型


- Any:所有类型的基类
    - AnyVal:数值类型的基类
        - Int(默认整型):0
        - Short
        - Long
        - Float
        - Double(默认浮点型):0.0
        - Byte
        - Char
        - Boolean:false
        - Unit:void
    - AnyRef:引用类型的基类
        - String():null
        - Array
        - class
        - object
        - Null:null

- Nothing



---
## Trait
> 特征

- 每个特征只有一个无参构造函数
- 按照从左到右的顺序执行特征的构造函数
- 多个特征继承同一个父特征，父特征构造函数只初始化一次


---
## package
> 包

```scala

package hn.cch {
    // code
}



```

---
## case class
> 样例类


---
## case object
> 样例对象