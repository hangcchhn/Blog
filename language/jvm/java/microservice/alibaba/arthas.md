# Arthas

- 集成async-profiler

---
## async-profiler

- https://github.com/jvm-profiling-tools/async-profiler

- `./profiler.sh`

---
```sh
java -jar math-game.jar

jps -l

java -jar arthas-boot.jar

dashboard

thread 1 | grep 'main('

jad demo.MathGame

watch demo.MathGame primeFactors returnObj


# 端口连接
quit/exit

# 停止arthas
stop


```


---