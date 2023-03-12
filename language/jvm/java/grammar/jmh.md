# JMH
> Java Microbenchmark Harness
- Java微基准测试框架

## 注解
### 1.BenchmarkMode
> 基准模式
- Throughput:吞吐量（每段时间执行调用次数）
- AverageTime:调用平均耗时（每次执行调用平均耗时）
- SampleTime:随机采样执行耗时
- SingleShotTime:单次调用时间

### 2.Warmup/Measurement
> 在基准测试前预热配置参数/正式度量计算配置参数
- iterations:迭代次数
- time
- timeUnit
- batchSize

### 3.State
- Benchmark
- Group
- Thread

### 4.Fork/Threads
> 进程数/线程数
### 4.Benchmark
> 方法级注解

### 5.Param
> 属性级注解


### 6.Setup/TearDown
> 调用之前或之后执行
### CompilerControl
> 编译控制

---
- maven
```
mvn archetype:generate \
-DinteractiveMode=false \
-DarchetypeGroupId=org.openjdk.jmh \
-DarchetypeArtifactId=jmh-java-benchmark-archetype \
-DgroupId=org.sample \
-DartifactId=test \
-Dversion=1.0

```

- pom.xml


```xml
<dependency>
    <groupId>org.openjdk.jmh</groupId>
    <artifactId>jmh-core</artifactId>
    <version>1.35</version>
    <scope>compile</scope>
</dependency>

<dependency>
    <groupId>org.openjdk.jmh</groupId>
    <artifactId>jmh-generator-annprocess</artifactId>
    <version>1.35</version>
    <scope>compile</scope>
</dependency>
```
---

```java


```