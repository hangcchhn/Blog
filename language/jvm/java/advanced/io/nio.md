### NIO
- Channel:通道
    - FileChannel
    - SocketChannel
- Selector:选择器
- Buffer:缓存
    - ByteBuffer


## Thread->Selector
- Accept:有连接进来
- Connect:连接成功了
- Read:有数据可读
- Write:数据写完了

---

---
## 缓存Buffer读写Read/Write
- 一、属性
    1. capaccity:读写容量
    2. position:读写位置
    3. limit:读写限制
    4. mark:标记
- 二、操作
    1. allocate():创建缓存
    2. put():写入缓存
    3. flip():翻转缓存
    4. get():读取缓存
    5. rewind():重读缓存
    6. mark():设置标记
    7. reset():重置标记
    8. clear():清空缓存


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