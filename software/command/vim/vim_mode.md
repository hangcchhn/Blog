# vim mode
> :set showmode 设置显示模式
- Normal mode
- Visual mode:-- VISUAL --
- Select mode:-- SELECT --
- Insert mode:-- INSERT --
- Replace mode:-- REPLACE --
- Command-line mode
- Ex mode
---
- Operator-pending mode
- Virtual Replace mode:-- VREPLACE --
- Insert Normal mode:-- (insert) --
- Insert Visual mode:-- (insert) VISUAL --
- Insert Select mode:-- (insert) SELECT --



---
## 常用模式
1. 普通模式(Normal)
    - 打开文件后的默认模式，按esc键从其他模式转到普通模式
2. 插入模式(Insert)
    - 输入方式由很多种，例如：插入insert，追加append，等等
3. 命令行模式(Command-line):
    - 在普通模式下，以:/?!作为命令前缀输入命令，再按enter键执行命令
4. 可视模式(Visual):选中某一部分进行操作
    - 按字符选中 V
    - 按行选中 Shift+V
    - 按块选中 Ctrl+V
---
## 模式转换:从列到行
> ^->Ctrl

| vim mode | Normal | Visual | Select | Insert | Replace | Command-line | Ex |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| Normal | | v V ^V | **4.** | **1.** | R gR | :/?! | Q |
| Visual | **2.** | | ^G | c C | -- | : | -- |
| Select | **5.** | ^O ^G | | **6.** | -- | -- | -- |
| Insert | esc | -- | -- | | insert | -- | -- |
| Replace | esc | -- | -- | insert | | -- | -- |
| Command-line | **3.** | -- | -- | :start | -- | | -- |
| Ex | :vi | -- | -- | -- | -- | -- | |


1. Normal->Insert:i, I, a, A, o, O, c, C, s, S
2. Visual->Normal:esc, V, Shift + V, Ctrl + V
3. Command-line->Normal:esc
4. Normal->Visual:
5. Select->Normal:
6. Select->Insert:



