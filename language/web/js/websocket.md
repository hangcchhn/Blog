# WebSocket

- WebSocket是一种在单个TCP连接上进行全双工通信的协议
- 在WebSocket API中，浏览器和服务器只需要完成一次握手，两者之间就直接可以创建持久性的连接，并进行双向数据传输。


---
```js

// 创建WebSocket连接.
const webSocket = new WebSocket('ws://' + window.location.host + '/websocket');

// 连接成功触发
webSocket.addEventListener('open', function (event) {
    webSocket.send('Hello Server!');
});

// 监听消息
webSocket.addEventListener('message', function (event) {
    console.log('Message from server ', event.data);
});

```

---
## SockJS
- 应对某些浏览器不支持WebSocket而生
- SockJS是WebSocket的一种模拟
- SockJS是WebSocket的备选方案

---
## STOMP
> Simple(Streaming) Text Orientated Messaging Protocol
- 简单(流)文本定向消息协议
- 基于WebSocket的
- 基于帧的线路格式层

---

## Server Send Event
- 服务器发送事件SSE

- `Content-Type:text/event-stream`