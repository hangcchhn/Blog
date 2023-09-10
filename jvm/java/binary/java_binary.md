# Java程序

---

## jps
> Java Process Status

```sh
jps -l
# pid package.MainClass

jps -v
# pid MainClass -Dxxx=yyy

```

## jinfo:基本信息

```sh
jinfo pid

```

---
## jstat
> Java Statistics

- 可带刷新时间间隔动态打印进程状态信息

```sh
jstat -class pid



jstat pid interval count


jstat -gc pid
jstat -gcutil pid

# 新生代
jstat -gcnew pid
# 老年代
jstat -gcold pid


```

## jstatd
> jstat Daemon



---
## jstack

- 线程

```sh

jstack pid
```

- 解决CPU过高:
```sh
ps H -eo pid,tid,%cpu | grep pid

top -p pid -H

jstack pid

jstack -l tid
```


---

## jmap
> Java Memory

```sh
jmap -heap pid

jmap -dump:format=b,file=filename.hprof pid

```



---
## jhat
> Java Heap Analyse Tool

```sh
jhat -port 7000 filename.hprof

```
- http://localhost:7000

---

## jmc
> Java Mission Control




---

## jdb

```sh

jdb MainClass
> stop in MainClass.methodName
> run
> next

```
---
## jhsdb

```sh
# 命令行
jhsdb clhsdb  --pid pid
# 图形化
jhsdb hsdb --pid pid

```


---
## jcmd

---

## jdeps