# kafka producer



---

## 应答

- acks
    - 0:producer发送message不等待broker确认
    - 1:producer发送message只等待leader确认
    - all:producer发送message要等待follower从leader复同步