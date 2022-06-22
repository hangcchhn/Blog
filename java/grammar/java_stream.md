# java stream
> java流:Stream<T>

- jdk1.8
- lambda表达式
- Collection
- Iterable

流使用一次就关闭了，所有不要保存流变量，直接转换成需要的集合类型

```java
public Class T{
    private M m;

    private N n;

    // getter and setter

}

List<T> tList

Stream<T> tStream

```


## 创建
- `java.util.Collection.stream()`
- `java.util.Arrays.stream(T[] array)`
- 类Stream的静态方法：of()、iterate()、generate()

---

- 映射map
将流中的每个元素映射成一个新的元素。
```java
List<M> mList = tList.stream.map(T::getM).collect(Collectors.toList());
```

- flatMap
将流中的每个元素都转换成一个流，然后把所有流连接成一个流。


- 过滤filter
```java

List<T> filterTList = tList.stream.filter(t -> boolean_expression).collect(Collectors.toList());
```

- 规约reduce
把一个流缩减成一个值

- 第一个参数是规约的初始值，也是规约的标识值
    - 相加传0
    - 相乘传1
    - 字符串连接传""

```java
// reduce函数第一个参数是初始值，也是标识值
// 相加传0
// 相乘传1
// 字符串连接传""

// 累乘
Integer prod = integerList.stream().reduce(1, (x, y) -> x * y);
logger.info("prod:{}", prod);

// 如果reduce函数没有使用第一个参数需要先使用isPresent校验，再使用get获取结果
Optional<Integer> integerOptional = integerList.stream().reduce((x, y) -> x * y);
if (integerOptional.isPresent()) {
    prod = integerOptional.get();
    logger.info("prod:{}", prod);
}

Integer sum = integerList.stream().reduce(0, Integer::sum);

Integer max = integerList.stream().reduce(Integer.MIN_VALUE, Integer::max);
Integer min = integerList.stream().reduce(Integer.MAX_VALUE, Integer::min);

String concat = stringList.stream().reduce("", String::concat);


```

- 排序sorted
```java
// 顺序
tList = tList.stream().sorted(Comparator.comparing(T::getN)).collect(Collectors.toList());
// 倒叙
tList = tList.stream().sorted(Comparator.comparing(T::getN).reversed()).collect(Collectors.toList());


```


---
## collect
- toList
- toSet
- toMap
```java
Map<M, N> mnMap = tList.stream().collect(Collectors.toMap(T::getM, T::getN))
Map<M, T> mtMap = tList.stream().collect(Collectors.toMap(T::getM, Function.identity()))
```
---
- 分组groupingBy
```java
Map<M, List<T>> mtListMap = tList.stream..collect(Collectors.groupingBy(T::getM));
```

- 分区partitioningBy
```java
Map<M, List<T>> mtListMap = tList.stream..collect(Collectors.partitioningBy(T::getM));
```

---

- 连接joining
```java
String string = stringList.stream..collect(Collectors.joining(","));
```


---
## 聚合
> Collectors类的static方法

- 计数： count
- 平均值： averagingInt、 averagingLong、 averagingDouble
- 最值： maxBy、 minBy
- 求和： summingInt、 summingLong、 summingDouble
-  统计以上所有： summarizingInt、 summarizingLong、 summarizingDouble

---
##
```java
// 合并和去重
Stream.concat(stream0, stream1).distinct()
// 分页：跳过和限制
stream.skip(_offset).limit(_number)

```

---
## 分类
- 顺序流
    1. list.stream()
- 并行流:注意并行问题
    1. list.parallelStream()
    2. list.stream().parallel()


---
| Stream | Array|
| :-: | :-: |
| IntStream       | int[]       |
| LongStream      | long[]      |
| DoubleStream    | double[]    |

- 使用commons-math3包需要以double[]作为参数
```java
double[] doubleArray = doubleList.stream().mapToDouble(Double::doubleValue).toArray();


boxed():DoubleStream->Stream<Double>
mapToDouble(Double::doubleValue):Stream<Double>->DoubleStream

```
---

---

---
