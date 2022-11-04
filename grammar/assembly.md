# 汇编语言
> assembly language

---
## debug

- debug CS:IP
    - Windows XP
    - DosBox

- 十六进制0xFF
    - -r:查看或修改寄存器
    - -d:查看内存
    - -e:修改内存
    - -u:将内存中的机器指令翻译成汇编指令
    - -t:单步执行汇编指令
    - -a:追加汇编指令

---
## 寄存器
> register

- 通用寄存器
    - AX = AH + AL:累加寄存器(Accumulator)
    - BX = BH + BL:基址寄存器(Base)
    - CX = CH + CL:计数寄存器(Count)
    - DX = DH + DL:数据寄存器(Data)

- 指针寄存器(Pointer)
    - SP:堆栈指针寄存器(Stack)
    - BP:基址指针寄存器(Base)

- 变址寄存器(Index)
    - SI:来源寄存器(Stack)
    - DI:目的寄存器(Destination)

- IP:指令指针寄存器(Instruction Pointer)

- 段寄存器(Segment)
    - DS:数据段寄存器(Data)
    - ES:附加段寄存器(Extra)
    - SS:堆栈段寄存器(Stack)
    - CS:代码段寄存器(Code)

---
## 标志寄存器
> 程序状态字(Program Status Word, PSW)

| 中文 | 英文 | 缩写 | 是真 | 否假 |
| :-: | :-: | :-: | :-: | :-: |
| 溢出标志 | Overflow Flag | OF | OV | NV |
| 方向标志 | Direction  Flag | DF | DN | UP |
| 中断标志 | Interrupt Flag | IF | EI | DI |
| 符号标志 | Sign Flag | SF | NQ | PL |
| 零标志 |  Zero Flag | ZF | ZR | NZ |
| 辅助进位标志 | Auxiliary Carry Flag | AF | AC | NA |
| 奇偶标志 | Parity Flag | PF | PE | PO |
| 进位标志 | Carry Flag | CF | CY | NC |
| 跟踪标志 | Track Flag | TF |  |  |
| 进位标志 | 英文 | 缩写 | 是真 | 否假 |


| 15 | 14 | 13 | 12 | 11 | 10 | 09 | 08 | 07 | 06 | 05 | 04 | 03 | 02 | 01 | 00 |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
|   |   |   |   | OF | DF | IF | TF | SF | ZF |  | AF |  | PF |   | CF |
