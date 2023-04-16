# Java程序

---

## jps:Java Process Status

```sh
jps -l
# pid package.MainClass
```


---
## jstat:垃圾回收

- 可带刷新时间间隔动态打印进程状态信息

```sh
jstat pid interval count

jstat -gcutil pid
jstat -gc pid

# 新生代
jstat -gcnew pid
# 老年代
jstat -gcold pid


```


## jinfo:基本信息

---
## jstack:线程

- jstack pid



## jmap:内存

```sh
jmap -heap pid

jmap -dump:-dump:[live,] format=b, file=filename.hprof pid

```
---
## jhat:Java Heap Analyse Tool

```sh
jhat -port 7000 filename.hprof

```
- http://localhost:7000



