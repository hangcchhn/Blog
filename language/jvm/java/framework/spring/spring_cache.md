



```xml

<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-cache</artifactId>
</dependency>

```


```java
@EnableCaching

```


---
## Ehcache

- [Ehcache](../framework/ehcache.md)

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