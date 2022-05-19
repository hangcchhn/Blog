# Netty

## 一、基础

## 二、编程

### 1.基本用法

#### (1)服务端

```java
public class Server {
    public void bind(String host, int port) {
        ServerBootstrap server = new ServerBootstrap();
        EventLoopGroup parentGroup = new NioEventLoopGroup();
        EventLoopGroup childGroup = new NioEventLoopGroup();
        server.group(parentGroup, childGroup)
                .channel(NioServerSocketChannel.class)
                .childHandler(new ChannelInitializer<SocketChannel>() {
                    @Override
                    protected void initChannel(SocketChannel socketChannel)
                        throws Exception {
                        socketChannel.pipeline()
                            .addLast("ServerHandler", new ServerHandler());
                    }
                });

        try {
            ChannelFuture channelFuture = server.bind(host,port).sync();
            channelFuture.channel().closeFuture().sync();
        } catch (InterruptedException e) {

        } finally {
            parentGroup.shutdownGracefully();
            childGroup.shutdownGracefully();
        }
    }
}
```

#### (2)服务端处理器

```

```

#### (3)客户端

```

```

#### (4)客户端处理器

```

```

## 二、组件

### 1.
