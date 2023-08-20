# RPC
> Remote Procedure Call
- 远程过程调用

- 本地调用


- 使用HTTP或TCP协议传输

- 接口定义语言IDL(Interface Definition Language)

---
## 组件
- RPC采用客户机/服务器模式

- Client
- Server
- Client Stub
- Server Stub
-


---
## 序列化技术
- 对象转化成二进制流进行传输

- protobuf
- hessian
- thrift
- kryo

- XML
- JSON

- avro

- Java原生序列化Serializable



---
## protobuf序列化
> protocol buffers

- Akka也使用protobuf


## 流程
- 配置protobuf依赖
- 编写proto文件
- protobuf编译器protoc，编译proto文件，生成stub文件
- 实现服务端
- 实现客户端

## 编写proto文件

- `service`:
- `message`:


```proto

service Service {
    rpc method(Request) returns(Response) {}
}

message Request {
    string
}

message Response {

}

```

---
## gRPC
> Google

- 免费，跨语言，高性能
- 使用protobuf序列化
- 使用HTTP/2协议传输
- 使用Netty框架


### 使用gRPC的项目
- Nacos 2.0+
- Dobbo 3.0+
- RocketMQ 5.0+

---
## Thrift
> Facebook

---
## Dubbo
> Alibaba
- 使用TCP协议传输



## Arvo
> Hadoop