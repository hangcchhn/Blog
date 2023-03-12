# WebSocket

- WebSocket是一种在单个TCP连接上进行全双工通信的协议
- 在WebSocket API中，浏览器和服务器只需要完成一次握手，两者之间就直接可以创建持久性的连接，并进行双向数据传输。


---
```js

// 创建WebSocket连接.
const webSocket = new WebSocket('ws://localhost:8080');

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
- STOMP:Simple(Streaming) Text Orientated Messaging Protocol
简单(流)文本定向消息协议