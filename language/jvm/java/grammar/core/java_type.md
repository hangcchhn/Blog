# Java Type
---
## 数据类型
- 基本数据类型
    - boolean
    - byte
    - char
    - int
    - long
    - float
    - double
    - complex

- 衍生数据类型
    - 类:class
    - 接口:interface
    - 枚举:enum
    - 注解:@interface


---



---

# java语言基本数据类型占有byte字节数量
- 32位64位都一样千万注意别和C语言记混了

byte->1byte
char->2byte
short->2byte
int->4byte
long->8byte
float->4byte
double->8byte

占有bit位数
boolen->1bit
byte->8bit


---
## 包装类型
> 对应基本数据类型，自动装箱拆箱

- 尽量使用基本数据类型替代对应包装类型

### 整型Integer,Long,Short
- IntegerCache
整型缓存默认范围[-128,127]，可使用`-XX:AutoBoxCacheMax=high`调整[-128,high]，要求high>127,否则不生效
- Float,Double没有缓冲
- Boolean,Byte全部缓冲
- Character:字符缓存范围：ASCII编码[0,127]


- 以0开头，其他数字在0-7之间，该数字则是八进制数
- 以0x开头，其他数字在0-7之间，该数字则是十六进制数


---



## 字符串String

- `String`字符串类重写`Object`超类的`equals`方法
    - 在类型都是字符串的前提下，从头依次判断字符是否相等

- 比较：运算符`==`和函数`equals()`的区别

- `String`字符串类，被`final`修饰，不能被`extends`；

- `substring`方法：重新构造新的字符串对象，复制原来的内容，即保护性拷贝


### StringBuilder
- 多线程不安全

### StringBuffer
- 线程安全，同步机制
- 默认初始化容量是16，当达到最大容量时会扩容到当前容量的2倍加2，即2*N+2。
- 首先创建一个新的字符数组，然后复制旧的字符数组，开销很大。



---

## 序列化
- 将对象转化为字节数组，可以保存在磁盘上，或可以通过网络进行传输，以达到以后恢复成原来的对象。

- 静态变量不能被序列化

- 实现`Serializable`接口
```java
public class SerializableClass {
    // 序列化版本ID
    private static final long serialVersionUID = 1L;

}
```
- 在成员前加上transient关键字，可以阻止该成员被序列化到文件中
- 在被反序列化后，被关键字transient修饰的成员的值被设为初始值



---

## 克隆


- 实现`Cloneable`接口的`clone`方法
```java
public class CloneClass implements Cloneable {

    @Override
    protected Object clone() throws CloneNotSupportedException {
        return super.clone();
    }
}

```

- 基本类型和引用类型都可以深度克隆
- 克隆引用属性时需要单独调用引用类型的`clone`方法实现深复制

- 赋值：
    1. 基本类型：复制内容（数值）
    2. 对象类型：复制引用（地址）

- 复制
    1. 浅复制：复制对象的引用但不复制引用的对象
    2. 深复制：复制引用的对象及其成员引用的对象




---
jmh——Java Micro-benchmark Harness


