# RabbitMQ

- Erlang语言：对分布式和高并发支持良好
- 高级消息队列协议AMQP(Advanced Message Queuing Protocol)

---
## 组件

- Broker：代理即RabbitMQ服务

- 交换机Exchange：
    - 直连direct
    - 扇形fanout
    - 主题topic
    - 头部headers
    - 虚拟主机vhost

- 队列Queue
    - Exchange Binding Queue

- 连接Connection
    - TCP长连接

- 通道Channel
    - Connection包含多个Channel

- Consumer
- Producer

-
## 管理

```sh
rabbitmq-plugins enable rabbitmq_management

rabbitmqctl add_user admin chench
rabbitmqctl set_user_tags admin administrator
rabbitmqctl set_permissions -p "/" admin ".*" ".*" ".*"

```
- `http://127.0.0.1:15672/`
    - 用户密码：guest/guest，只能本地登录

- rabbitmqadmin
```sh
wget http://127.0.0.1:15672/cli/rabbitmqadmin
chmod +x rabbitmqadmin
rabbitmqadmin --help
```