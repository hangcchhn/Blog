
数据结构：数据类型底层实现

哈希表：类似一个数组，每个元素称为哈希桶，哈希桶存储键值对数据

哈希桶由多个entry构成，entry由*next指针，*key指针和*value指针构成

string,hash,set底层实现使用哈希表
时间复杂度O(1)

为了实现键到值的快速访问：redis使用一个哈希表存储所有的键值对数据


哈希冲突：链式哈希

重哈希：redis默认使用两个全局哈希表交替进行扩容

渐进式重哈希：将大量的数据拷贝分摊到每次请求中


数组
双向链表
时间复杂度O(n)


压缩列表zl(Zip List)：类似一个数组
头部设定三个字段：zlbytes（总容量），zltail（尾部偏移量）和zllen（元素个数）
尾部设定一个字段：zlend（尾部指针）
首尾元素操作的时间复杂度是O(1)，其他元素操作的时间复杂度是O(n)

跳表：在链表的基础上，增加了多级索引
zset(sorted set)底层实现使用跳表
时间复杂度O(logn)


单个元素操作:hset,hset,hdel,
时间复杂度O(1)

多个元素操作:hmget,hmset,
时间复杂度O(m)

范围操作:hgetall,smembers,lrange,zrange
时间复杂度O(n)

redis >= 2.8.x
扫描操作:hscan,sscan,zscan

统计操作:llen,scard
时间复杂度O(1)

列表首尾增删元素(lpop,lpush,rpop,rpush)的时间复杂度是O(1)
