

## Request
- `HttpServletRequest`
- `HttpServletResponse`



## Response



- `DeferredResult`

- `Callable`
- `WebAsyncTask`
- `WebAsyncUtils`

---

## Server Send Event
- 服务器发送事件SSE

- `Content-Type:text/event-stream`


- `ResponseBodyEmitter`
    - `SseEmitter`继承`ResponseBodyEmitter`
        - SSE(Server Send Event)：服务器发送事件，`HTTP Streaming`，WebSocket



---

- `StreamingResponseBody`：流式，下载
    - `StreamingResponseBodyReturnValueHandler`
    - `StreamingResponseBodyTask`
```java


```