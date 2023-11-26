
# Redis Message Queue


- 不推荐使用Redis实现消息队列


### Redis 2.0.0之前：
1. 使用List：lpush和brpop
2. 使用ZSet：zadd和zrangebyscore

- 支持RDB和AOF持久化

- 不支持重复消费
- 不支持消息确认


### Redis 2.0.0新增：
- 发布订阅模式
- publish channel "message"
- subscribe channel

- 不支持持久化
- 不支持消息确认

### Redis 5.0.0新增：

- Stream类型：xadd和xrange
- Stream类型提供了xack手动确认消息消费的命令