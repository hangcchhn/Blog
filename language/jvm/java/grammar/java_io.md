# 输入输出
> Input/Output

---
## IO流

- 输入流中的内容只能读取一次

---
### 1.字节流
InputStream
available():返回字节大小
read():

文件读写
当文件过大的时候，会出现内存溢出（文件大小超过内存大小）
网络读写会出现数据量过大的传输问题，文件读写不会


网络读写
当数据过大的时候，available会返回0，导致读取不到数据

1.sleep
2.read

字节流转字符流
BufferReader



OutputStream
write():
flush():刷新缓冲区

---
### 2.字符流
Reader
Writer


随机数
Random

---

## IO模型

- 阻塞模型
    1. 同步阻塞模型 Blocking BIO

    2. 同步非阻塞模型 Non-Blocking  NIO

    3. 多路复用模型 Multiplexing MIO

    4. 异步模型 Asynchronous AIO

之前是OIO(old) Blocking
java > 1.4
之后是NIO(new) Non-Blocking
- 异步
    1. Channel通道

    2. Selector选择器

    3. Buffer 缓存

---
缓存Buffer读写Read/Write  IO
- 一、属性
    1. capaccity读写容量
    2. position读写位置
    3. limit读写限制
    4. mark标记
- 二、操作
    1. allocate()创建缓存
    2. put()写入缓存
    3. flip()翻转缓存
    4. get()读取缓存
    5. rewind()重读缓存
    6. mark()设置标记
    7. reset()重置标记
    8. clear()清空缓存


- 通道类型
    1. FileChannel文件通道
    2. SocketChannel套接字通道 网络通道 TCP 客户端
    3. ServerSocketChannel 服务器套接字通道
    4. DatagramChannel数据报通道 UDP

选择器
1. SelectableChannel可以被选择的通道

2. SelectionKey选择键
    - OP_READ
    - OP_WRITE
    - OP_CONNECT
    - OP_ACCEPT


---
netty框架 reactor模型

Reactor反应器:接收响应分发
Handler处理器:业务逻辑处理

多线程handler模型
单线程reactor模型
多线程reactor模型


netty:并发使用异步回调

Future:java（oracle）|guava（google）

join:线程合并
master线程调用replica线程的合并操作master线程阻塞
等待replica线程完成replica线程退出后master线程恢复

java1.5
Callable|Runnable


类FutureTask实现Future接口

Future接口
- get操作（获取并发任务执行结果）
- cancel操作（取消并发任务执行）
- isDone状态（任务是否完成）
- isCancel状态（任务是否取消）

guava 异步回调 接口
ListenableFuture
FutureCallback

netty 异步回调 接口

Future->ListenableFuture
GenericFutureListener->FutureCallback


---
I/O:File描述符｜Socket套接字

I/O多路复用:单个线程可以处理多个IO操作
核心函数:select，poll，epoll

nio->reactor模型
aio->proactor模型

Java->selector模型
Linux->epoll模型
Unix->kqueue模型


NIO:
核心组件:channel，buffer，selector

Channel类似Stream
FileChannel，SocketChannel

ByteBuffer

Thread->Selector

- Accept:有连接进来
- Connect:连接成功了
- Read:有数据可读
- Write:数据写完了



