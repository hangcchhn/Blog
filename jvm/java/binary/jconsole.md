# JConsole



- Memory
    - Heap:Eden Space,Survivor Space, Tenured Gen
    - Non-Heap:Metaspace(Perm Gen) Code Cache
    - 垃圾回收GC: 
        - 新生代:多少秒一次 seconds on Copy (公共多少次 collections)
        - 老年代:多少秒一次 seconds on MarkSweepCompact (公共多少次 collections)
        - PS MarkSweep(mirror gc)
        - PS Scavenge(full gc)
