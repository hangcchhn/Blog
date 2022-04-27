# 中断
> interrupt

### 1.中断

##### 类型

- 外中断
- 内中断



- 中断向量表
- 中断优先级



##### 处理方法

- 屏蔽中断
- 嵌套中断

### 2.中断处理程序

##### 处理步骤

- 测定是否有未响应的中断信号
- 保护被中断进程的CPU环境：将处理机状态字PSW和程序计数器PC保存在中断栈中。
- 转入相应的设备处理程序
- 中断处理
- 恢复CPU现场并退出中断


