# IO

- I/O(Input/Output)
- 输入输出


## 文件描述符
- fd(file descriptor)


- fcntl(file control)
- ioctl(IO control)


- EOF(end-of-file)

- 套接字socket
- 管道pipe


- 文件指针
- 偏移量

- `seek`

### 文件模式
- `r`：读取read
- `w`：写入write
- `a`：追加append
- `+`：读写

- `t`：文件使用文本模式打开，数据以字符串形式传输
- `b`：文件使用二进制模式打开，数据以字节形式传输


- 标准输入`stdin`：
- 标准输出`stdout`：
- 标准错误`stderr`：

---

I/O多路复用:单个线程可以处理多个IO操作
核心函数:select，poll，epoll

- NIO->Reactor模型
- AIO->Proactor模型

- Java->selector模型
- Linux->epoll模型
- Unix->kqueue模型


