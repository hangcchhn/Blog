# Scala特色


## 下划线
> `_`


- 占位符
```scala




```



- 通配符
- 默认值
- getter/setter
```scala
class IntClass() {
    // 默认值
    private var _int: Int = _

    // getter
    def int: Int = _int

    // setter
    def int_(int: Int): Unit = {
        _int = int
    }
}
```

- 将方法转换成函数
---
- 偏应用函数
    - partially applied function

---
## Trait
> 特征

- 每个特征只有一个无参构造器
- 按照从左到右的顺序执行特征的构造器
- 多个特征继承同一个父特征，父特征构造器只初始化一次


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

---
