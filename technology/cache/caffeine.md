# Caffeine

- 基于Java1.8开发的本地缓存组件，缓存命中率已经接近最优值
- Spring 5.x使用Caffeine替换Guava Cache实现缓存
- Caffeine使用了Window-TinyLFU算法，解决了LRU和LFU不足
    - 采用Count–Min Sketch算法降低频率信息带来的内存消耗
    - 维护一个PK机制保障新上的热点数据能够缓存


- pom.xml
```xml
<dependency>
    <groupId>com.github.ben-manes.caffeine</groupId>
    <artifactId>caffeine</artifactId>
    <version>3.1.1</version>
</dependency>
```

---
- `Cache<K,V>`
    - `refreshAfterWrite`
    - `expireAfterWrite`
    - `expireAfterAccess`

- 设置`refreshAfterWrite`，或设置`expireAfterWrite`和`expireAfterAccess`
- `CacheStats Cache.stats()`统计方法

- `LoadingCache<K,V>`


- `AsyncCache<K,V>`
    - 返回`CompletableFuture`类
    - 使用`ForkJoinPool.commonPool()`作为线程池，可以通过重写`Caffeine.executor(Executor)`方法指定线程池


---

## 缓存淘汰
- LFU
    - 默认
- Weight
    - `weigher((Weigher<K,V>)(key, value) -> key)`
- LRU
    - `scheduler(Scheduler.systemScheduler())`
- Reference