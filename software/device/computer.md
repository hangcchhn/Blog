> computer



---
## CPU
> 中央处理单元(Central Processing Unit)

- 处理器
- 核Core

## 寄存器
> Register

## 缓存
> Cache

- SRAM(Static RAM)
- L1 Cache：一级缓存
    - L1 Data：一级数据缓存
    - L1 Program：一级指令缓存
- L2 Cache

- L3 Cache


- 一级和二级缓存是CPU核间独立的，三级缓存是CPU核间共享的

- 缓存行：CPU读写缓存的单位，一般是64字节
- 缓存一致性协议：MESI
    - MESI是基于缓存无效化的一致性缓存协议，并且是一种最常见的支持回写式缓存的协议。
- 缓存行状态：占2位
    - Modified
    - Exclusive
    - Shared
    - Invalid

- 内核操作缓存
    - local read
    - local write
    - remote read
    - remote write

- 存储缓冲区

- 无效化队列

- 内存屏障

## 总线
> Bus

- 总线嗅探(Snoop)机制：CPU和内存通过总线互通消息



## 内存
> Memory


- DRAM(Dynamic RAM)

## 存储
> Storage


- Disk

