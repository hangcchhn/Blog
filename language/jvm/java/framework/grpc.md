# gRPC
> Google

- 免费，跨语言，高性能
- 使用protobuf序列化
- 使用HTTP/2数据传输

### 使用gRPC的项目
- Nacos 2.0+
- Dobbo 3.0+
- RocketMQ 5.0+

---
## RPC
> Remote Procedure Call
- 远程过程调用

## protobuf
> protocol buffers

- Akka也使用protobuf

- 接口定义语言IDL(Interface Definition Language)

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

