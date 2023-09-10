# Java VisualVM

- Java 1.6~1.8自带监控工具，Java 9之后不再自带



---
## VisualVM


- ./etc/visualvm.conf
```ini
visualvm_jdkhome="E:\Windows\java"

```



---
- Visual GC:
    - Space:
    - Graphs:
        - [新生代]Eden Space (最大容量，当前容量):当前已使用容量，[mirror gc]垃圾回收多少次，垃圾回收总耗时
        - [幸存区]Survivor 0｜1 (最大容量，当前容量):当前已使用容量
        - [老年代]Old Gen (最大容量，当前容量):当前已使用容量，[full gc]垃圾回收多少次，垃圾回收总耗时
        - [元空间]Metaspace (最大容量，当前容量):当前已使用容量
    - Histogram:
        - Parameters:
            - Tenuring Threshold:新生代年龄阀值（大于或等于就进入老年代）
            - Max Tenuring Threshold:新生代年龄的最大值
            - Desired Survivor Size:预期幸存区阀值
            - Current Survivor Size:当前幸存区大小


---
- File->Load->*.hprof:加载



- Plugins
