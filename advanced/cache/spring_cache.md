# Spring Cache

- Spring 3.1开始支持Spring Cache

- 实现`CacheManager`接口
    - `SimpleCacheManager`类
    - `ConcurrentMapCacheManager`类
    - `NoOpCacheManager`类
    - `EhCacheCacheManger`类
    - `JCacheCacheManager`类
    - `CaffeineCacheManager`类
    - `RedisCacheManager`类
    - `HazelcastCacheManager`类
    - `CompositeCacheManager`类：组合




---
# Spring Boot
```xml

<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-cache</artifactId>
</dependency>

```
- `CacheAutoConfiguration`缓存自动配置，默认配置`SimpleCacheManager`类

---

- `@EnableCaching`：开启缓存
- `@CacheConfig`：缓存配置

- `@Caching(cacheable = {}, put = {}, evict = {})`：
- `@Cacheable`：查询方法

- `@CachePut`：更新方法
- `@CacheEvict`：删除方法

```java

```

- `key`：可以不指定，缺省按照方法所有参数进行组合
    - 可以使用SpEL表达式，`#a0`或`#p0`参数索引，`#id`参数名称，`#result`返回值
    - `#root`表示当前对象，可以省略
        - `#root.method`,`#root.methodName`
        - `#root.target`,`#root.targetName`
        - `#root.args[0]`,`#root.caches[0]`
- `keyGenerator`：`SimpleKeyGenerator`



---
## EhCache

- [EhCache](./ehcache.md)

```xml
<dependency>
    <groupId>net.sf.ehcache</groupId>
    <artifactId>ehcache</artifactId>
</dependency>
```



```yaml
spring:
    cache:
        type: ehcache
        ehcache:
            config: ehcache.xml


```

---

## Redis


```yaml
spring:
    redis:
        host: localhost
        port: 6379
    cache:
        type: redis
        redis:
            time-to-live: 10s


```


---

## Memcached


```xml
<dependency>
    <groupId>com.googlecode.xmemcached</groupId>
    <artifactId>xmemcached</artifactId>
</dependency>



```


```java

@Configuration
public class MemcachedConfiguration {

    @Bean
    public MemcachedClient memcachedClient() throws IOException {
        MemcachedClientBuilder memcachedClientBuilder = new XMemcachedClientBuilder("localhost:11211");
        MemcachedClient memcachedClient = memcachedClientBuilder.build();
        return memcachedClient;
    }

}


```


---
## jetcache

```xml

<dependency>
    <groupId>com.alicp.jetcache</groupId>
    <artifactId>jetcache-starter-redis</artifactId>
</dependency>

```


---
## j2cache