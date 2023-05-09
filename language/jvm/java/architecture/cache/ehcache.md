
# ehcache

- 由Java语言实现

- 速度快，缓存共享麻烦

---
## 缓存同步
- ehcache.xml
```xml
<!--磁盘存储-->
<diskStore path="java.io.tmpdir"/>

<!--集群提供-->
<cacheManagerPeerProviderFactory class="net.sf.ehcache.distribution.RMICacheManagerPeerProviderFactory"
	properties="peerDiscovery=manual, rmiUrls=//localhost:40000/Cache0| //localhost:40000/Cache1"/>

<!--集群监听-->
<cacheManagerPeerListenerFactory class="net.sf.ehcache.distribution.RMICacheManagerPeerListenerFactory"
	properties="hostName=localhost, port=40001, socketTimeoutMillis=120000"/>

<!--默认缓存-->
<defaultCache
	maxElementsInMemory="10000"
	eternal="false"
	timeToIdleSeconds="120"
	timeToLiveSeconds="120"
	maxElementsOnDisk="10000000"
	diskExpiryThreadIntervalSeconds="120"
	memoryStoreEvictionPolicy="LRU">
	<persistence strategy="localTempSwap"/>
</defaultCache>

<!--配置缓存-->
<cache name="SystemCache"
	maxElementsInMemory="10000"
	maxElementsOnDisk="10000000"
	eternal="false"
	overflowToDisk="true">
</cache>
```