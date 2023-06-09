# Java Cache




- cache-api
```xml
<dependency>
    <groupId>javax.cache</groupId>
    <artifactId>cache-api</artifactId>
    <version>1.1.1</version>
</dependency>

```


---
## JCache
> JSR-107

- `CacheingProvider`接口：管理多个`CacheManager`对象
- `CacheManager`接口：管理多个`Cache`对象
- `Cache`接口：操作缓存
- `Cache.Entry`接口：`Cache`内部接口，存储实体
- `ExporyPolicy`接口：控制缓存过期策略，返回`Duration`对象
    - `EternalExpiryPolicy`：默认策略，没有过期时间
    - `CreateExpiryPolicy`：
    - `ModifiedExpiryPolicy`
    - `AccessExpiryPolicy`
    - `TouchedExpiryPolicy`
- `Caching`类：工具类，获取`CacheingProvider`对象
- `Configuration`接口：配置
- `CompleteConfiguration`接口：继承`Configuration`接口
- `MutableConfiguration`类：实现`CompleteConfiguration`接口