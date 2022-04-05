# 调度
> schedule




## 1.高级调度——作业调度

- 周转时间：作业完成时刻-作业提交时刻
- 平均周转时间：作业周转时间之和除以作业数量

### 先来先服务调度算法
> FCFS(First Come First Served)

### 短作业优先调度算法
> SJF(Short Job First)

### 优先级调度算法
> PSA(Priority Scheduling Algorithm)

### 高响应比优先调度算法
> HRRN(Highest Response Ratio Next)
$$
响应比 =\dfrac{等待时间+运行时间}{运行时间}
$$

---
## 2.中级调度——内存调度

---
## 3.低级调度——进程调度

### 轮转调度算法
> RR——Round Robin

### 优先级调度算法

### 多队列调度算法

### 多级反馈队列调度算法
> Multipleved Feedback Queue

- 设置多个就绪队列
- 每个队列都采用先来先服务调度算法
- 按队列优先级调度

### 基于公平原则的调度算法

- 保证调度算法
- 公平分享调度算法

---
## 4.实时调度

### 最早截止时间优先调度算法
> EDF(Earliest Deadline First)

- 截止时间越早，优先级越高

### 最低松弛度优先调度算法
> LLF(Least Laxity First)

$$
某时刻任务松弛度 = 任务执行时刻 - 当前时刻 \\
= 任务完成时刻 - 任务完成时长 - 当前时刻
$$

- 松弛度越低，优先级越高
