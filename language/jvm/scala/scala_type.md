# scala type


---


---
## 类型


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

## tuple
> 元组

- 元组存储多个不同类型的值
- 元组的长度和元素都不可变

```scala
var tuple = (element0, element1)
var tuple = element0 -> element1

// N = 0, 1,
println(tuple._N)

```

- 定长和变长

# 可变和不可变
- scala.collection.mutable.XxxBuffer
- scala.collection.immutable.Xxx
---

## Array
> 数组
```scala






```

---
## List
> 列表

- 有序，可重复

```scala




```
---
## Set
> 集合

- 无序，唯一
- 不可变和可变集合





---
## Set
> 集合

---
## Map
> 映射，键值对，字典



