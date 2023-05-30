# scala & java
> scala和java语法对比

## 语句
- 一行多语句使用分号;分隔，每行结尾分后;可省略
```scala


// 常量
val constant: Type = Any
// 变量
var variable: Type = Any

var str:String = ""
var s:String = s"str=${str}"
lazy var sql = """
    select column
    from table
    where 1 = 1
"""
```
- 输入输出
```scala
// 导包
import scala.io.StdIn
var str:String = StdIn.readLine()
var i:Int = StdIn.readInt()

println(str)
print(str, i)
```


- 方法&函数

```scala
// 方法
def method(name: Type): Type = {
    // code
}

// 函数
var function = (name: Type) => {
    // code
}

// 方法转为函数
var function = method _


```

- main函数：位于object
    - scala语言中的static变量和方法都定义在object单例对象中

```scala
// 单例对象
object Main {
    // 没有static关键字
    def main(args: Array[String]): Unit = {
        println("hello scala")
    }
}


```

- App Trait
```scala
object Main extends App {
    println("hello scala")
}

```


- 类和对象

```scala

object Object {
    // 单例模式
    class Class(var param: Type = null) {
        // 默认权限修饰public，但没有public关键字
        var field: Type = _ // 初始化默认值
        // private var
        // private[this]
        // protected var


        // 辅助构造器
        def this() {
            // 调用默认构造器
            this()
        }

        def method(param: Type): Type = {
            // code
        }
    }


    object Class {
        // 伴生对象：static成员和方法

        def apply(param: Type) = new Class(param)
    }

    def main(args: Array[String]): Unit = {
        // code
        var obj: Class = new Class()

        var obj: Class = Class(param)]


        // obj.field = null

    }
}


```




