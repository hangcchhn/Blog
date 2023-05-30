# markdown katex
>


- https://katex.org/docs/supported.html

## 常见
---

- 换行
$$
第1行
\\
第2行
\newline
第3行
$$
---
- 对齐align
- 方程equation
- 聚集gather
$$
\begin{align}
a
& = b
\\
& = c
\end{align}
$$
- 方框boxed
$$
\begin{equation}
\boxed{
    a = b
}
\end{equation}
$$
- 编号tag
$$
\begin{aligned}
a = b \tag{1-1}
\end{aligned}
$$

---
- 底端对齐的省略号
    - $1,2 \ldots N$
    - $1,2 \dotso N$

- 中线对齐的省略号
    - $1,2 \cdots N$
    - $1,2 \dotsm N$

---
- 空格 $a \quad b$
- 冒号 $x \colon y$

---
- 成对符号

| 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| $\langle$ | $\rangle$ | $\lvert$ | $\rvert$ | $\lVert$ | $\rVert$ | $\lmoustache$ | $\rmoustache$ |

---
- 取整符号

| 1 | 2 | 3 | 4 |
| :-: | :-: | :-: | :-: |
| $\lceil$ | $\rceil$ | $\lfloor$ | $\rfloor$ |

---
### 括号

- 小括号
    - $(x)$
    - $\lgroup X \rgroup$

- 中括号
    - $[x]$

- 花括号
    - $\{ X \}$
    - $\lbrace X \rbrace$

---
-  各种型号的括号
$$
\small( X \small)
\big( X \big)
\Big( X \Big)
\bigg( X \bigg)
\Bigg( X \Bigg)

\\
\small[ X \small]
\big[ X \big]
\Big[ X \Big]
\bigg[ X \bigg]
\Bigg[ X \Bigg]

\\
\small\{ X \small\}
\big\{ X \big\}
\Big\{ X \Big\}
\bigg\{ X \bigg\}
\Bigg\{ X \Bigg\}

\\

\left ( {
    \dfrac{
        \dfrac{X}{Z} + 1
        }{Y}
    }
\right )

$$

---
- 大括号
    - 上大括号：$\overbrace{a+b+c+d}^{4}$
    - 下大括号：$a+\underbrace{b+c}_{2}+d$

$$
f(x)=
\begin{cases}
x, & \text x \geq 0  \\
-x, & \text{$x \lt 0$}
\end{cases}
$$
---

- 粗斜体
    - $\pmb{w}$
    - $\boldsymbol{w}$
- 粗体(黑体)boldface
    - $\bf{T}$
    - $\bold{T}$
- $\it{T}$：斜体(意大利字体)italic
- $\rm{d}$：罗马字体roman
- $\sf{A}$：sans serif
- $\tt{d}$
- $\cal{d}$

- $\mathbb{R}$：黑板粗体blackboard bold
- $\mathtt{A}$：打字机字体
- $\mathscr{A}$：花体
- $\mathcal{A}$：书法calligraphy


| 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| $\mathbf{A}$ | $\mathit{A}$ | $\mathrm{A}$ | $\mathsf{A}$ | $\mathtt{A}$ | $\mathbb{A}$ | $\mathscr{A}$ | $\mathcal{A}$ |
| $\bf{A}$ | $\it{A}$ | $\rm{A}$ | $\sf{A}$ | $\tt{A}$ | $\pmb{A}$ | $\boldsymbol{A}$ | $\cal{A}$ |


$$

\bold{A}
\bf{A}
$$

---
- $\dot{x}$
- $\ddot{x}$
- $\overline{x}$
- $\underline{x}$

| 1 | 2 | 3 | 4 |
| :-: | :-: | :-: | :-: |
| $\acute{x}$ | $\grave{x}$ | $\check{x}$ | $\breve{x}$ |
| $\hat{x}$ | $\tilde{x}$ | $\widetilde{X}$ | $\widehat{X}$ |



---
### 集合关系
| 1 | 2 | 3 | 4 |
| :-: | :-: | :-: | :-: |
| $x \subset y$ | $x \supset y$ | $x \cup y$ | $x \cap y$ |

- $x \mid y$

---
### 箭头
| 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| $\uparrow$ | $\downarrow$ | $\leftarrow$ | $\rightarrow$ | $\Uparrow$ | $\Downarrow$ | $\Leftarrow$ | $\Rightarrow$ |
| $\upharpoonleft$ | $\downharpoonleft$ | $\upharpoonright$ | $\downharpoonright$ | $\rightharpoonup$ | $\leftharpoonup$ | $\rightharpoondown$ | $\leftharpoondown$ |
| $\nearrow$ | $\swarrow$ | $\searrow$ | $\nwarrow$ |
| $\leftrightarrow$ | $\Leftrightarrow$ | $\updownarrow$ | $\Updownarrow$ |
| $\iff$ | $\to$ | $\mapsto$ | $\gets$ |

- 箭头加长：$\longrightarrow$
- 箭头加勾：$\hookrightarrow$




