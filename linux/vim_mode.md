# vim mode


## 显示模式
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
## 模式转换:从列到行


| vim mode | Normal | Visual | Select | Insert | Replace | Command-line | Ex |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| Normal | | v V ^V | *4 | **1.** | | R gR | | : / ? ! | Q |
| Visual | **2.** | | ^G | c C | -- | : | -- |
| Select | **5.** | ^O ^G | | **6.** | -- | -- | -- |
| Insert | <Esc> | -- | -- | <Insert> | -- | -- |
| Replace | <Esc> | -- | -- | <Insert> | | -- | -- |
| Command-line | **3.** | -- | -- | :start | -- | | -- |
| Ex | :vi | -- | -- | -- | -- | -- | |


1. Normal->Insert:"i", "I", "a", "A", "o", "O", "c", "C", "s", "S"
2. Visual->Normal:<Esc> "v", "V", "Ctrl-V"
3.


---

