# 设备管理
> device manage

---

## 设备驱动
> device driver

### 功能

### 特点

### 设备处理方式

### 处理过程

- 将抽象要求转换为具体要求
- 对服务器请求进行校验
- 检查设备的状态
- 传送必要的参数
- 启动I/O设备

### 对I/O设备的控制方式

- 使用轮询的可编程I/O方式

- 使用中断的可编程I/O方式

- 直接存储器访问方式DMA

- I/O通道方式





---
## 假脱机系统

##### 组成

- 输入井和输出井
- 输入缓冲区和输出缓冲区
- 输入进程和输出进程
- 井管理程序

##### 特点

- 提高了输入输出的速度
- 将独占设备改造为共享设备
- 实现了虚拟设备功能





---

## 缓冲区管理
> cache

### 引入

- 缓和CPU和I/O设备间速度不匹配的矛盾
- 减少对CPU的中断频率，放宽对CPU中断响应时间的限制
- 解决数据粒度不匹配的问题
- 提高CPU和I/O设备之间的并行性

### 分类

- 单缓冲区
- 双缓冲区
- 环形缓冲区
- 缓冲池

### 缓冲池
> cache pool

- 结构组成
    - 空白缓冲队列emq：队首指针和队尾指针
    - 输入队列inq：队首指针和队尾指针
    - 输出队列outq：队首指针和队尾指针
    - 工作缓冲区：用于收容输入输出和提取输入输出数据

- 工作方式
    - 收容输入
    - 提取输入
    - 收容输出
    - 提取输出

### 过程

- Getbuf

```c
void Getbuf(unsigned type)
{
    Wait(RS(type));
    Wait(MS(type));
    B(number) = Takebuf(type);
    Signal(MS(type));
}
```

- Putbuf

```c
void Putbuf(type, number)
{
    Wait(MS(type));
    Addbuf(type, number);
    Signal(MS(type));
    Signal(RS(type));
}
```








---
## 磁盘
> disk

### 磁盘调度算法

- 先来先服务算法FCFS

- 最短寻道时间优先算法SSTF

- 基于扫描的磁盘调度算法
    - 扫描算法SCAN
    - 循环扫描算法CSCAN
    - NStepSCAN
    - FSCAN


