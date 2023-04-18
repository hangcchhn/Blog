
## IO模型

### 阻塞模型
- 同步阻塞模型:Blocking——BIO
- 同步非阻塞模型:Non-Blocking——NIO(java1.4)
- 多路复用模型:Multiplexing——MIO
- 异步模型:Asynchronous——AIO(java1.7)






---
## Netty框架——Reactor模型

Reactor反应器:接收响应分发
Handler处理器:业务逻辑处理

多线程handler模型
单线程reactor模型
多线程reactor模型


Netty:并发使用异步回调

Future:Java(Oracle)|Guava(Google)

join:线程合并
master线程调用replica线程的合并操作master线程阻塞
等待replica线程完成replica线程退出后master线程恢复

java1.5
Callable|Runnable


类FutureTask实现Future接口

### Future接口
- get操作（获取并发任务执行结果）
- cancel操作（取消并发任务执行）
- isDone状态（任务是否完成）
- isCancel状态（任务是否取消）

Guava 异步回调 接口
ListenableFuture
FutureCallback

Netty 异步回调 接口

Future->ListenableFuture
GenericFutureListener->FutureCallback


---
### File描述符｜Socket套接字

I/O多路复用:单个线程可以处理多个IO操作
核心函数:select，poll，epoll

- NIO->Reactor模型
- AIO->Proactor模型

- Java->selector模型
- Linux->epoll模型
- Unix->kqueue模型


