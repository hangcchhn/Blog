
# 使用netty框架实现http服务器

> 数据管道继承ChannelInitializer<SocketChannel>重写initChannel方法
1. 继承ChannelInboundHandlerAdapter重写channelRead方法
>
```java
// 使用HttpContent的默认大小传输和利用LastHttpContent标记最后一个
ch.pipeline().addLast(new HttpRequestDecoder());//HttpRequestDecoder解码
ch.pipeline().addLast(new HttpResponseEncoder());//HttpResponseEncoder编码
ch.pipeline().addLast(new HttpHandler());//HTTP协议事件处理
```
2. 继承SimpleChannelInboundHandler<FullHttpRequest>重写channelRead0方法
```java
// 使用ChunkedWriteHandler和HttpObjectAggregator指定最大数据传输
ch.pipeline().addLast(new HttpServerCodec());//HTTP协议编码解码
ch.pipeline().addLast(new ChunkedWriteHandler());//HTTP协议分块传输
ch.pipeline().addLast(new HttpObjectAggregator(65536));//HTTP协议对象聚合
ch.pipeline().addLast(new SimpleHttpHandler());// HTTP协议事件处理
```

---
- 粘包分包
```java

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;

/**
 * ByteBuf转化为Byte数组
 */
public class ByteBufToBytes {
    //临时变量
    private ByteBuf temp;
    public ByteBufToBytes(int length) {
        //初始化
        temp = Unpooled.buffer(length);
    }
    //标志是否读完
    private boolean end = true;
    public boolean isEnd() {
        return end;
    }

    /**
     * 单次读取数据
     * @param data
     */
    public void readOnce(ByteBuf data) {
        data.readBytes(temp, data.readableBytes());
        if (this.temp.writableBytes() != 0) {
            end = false;
        } else {
            end = true;
        }
    }

    /**
     * 读取所有数据
     * @return
     */

    public byte[] readFull() {
        if (end) {
            byte[] contentByte = new byte[this.temp.readableBytes()];
            this.temp.readBytes(contentByte);
            this.temp.release();
            return contentByte;
        } else {
            return null;
        }
    }

    /**
     * 对外读取
     * @param data
     * @return
     */
    public static byte[] read(ByteBuf data) {
        byte[] bytes = new byte[data.readableBytes()];
        data.readBytes(bytes);
        return bytes;
    }
}


```