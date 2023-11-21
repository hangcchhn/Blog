
## 字符串String

- `String`字符串类重写`Object`超类的`equals`方法
    - 在类型都是字符串的前提下，从头依次判断字符是否相等

- 比较：运算符`==`和函数`equals()`的区别

- `String`字符串类，被`final`修饰，不能被`extends`；

- `substring`方法：重新构造新的字符串对象，复制原来的内容，即保护性拷贝


### StringBuilder

- StringBuilder是线程不安全的


### StringBuffer
- StringBuffer是线程安全的，使用同步机制
- 默认初始化容量是16，当达到最大容量时会扩容到当前容量的2倍加2，即2*N+2。
- 首先创建一个新的字符数组，然后复制旧的字符数组，开销很大。

