# formula 公式


## 常见
---
- 空格 $a \quad b$
- 换行：
$$

第1行
\\
第2行
\newline
第3行
$$
- 公式对齐
$$
\begin{aligned}
a
& = b
\\
& = c
\end{aligned}
$$
- 公式方框
$$
\begin{aligned}
\boxed{
    a = b
}
\end{aligned}
$$
- 公式编号

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
- 下标：$x_1$
- 指数：$y^2$
- 上下标：$z_x^y$
- 绝对值：$|x|$

---
- 冒号 $x \colon y$

- 三点
    - $x \ddots y$
    - $x \vdots y$
- 斜线
    - $x \backslash y$
    - $x \smallsetminus y$

- 函数：$\operatorname{f}(x)$

- 书法：$\mathcal{F}$
- 手迹：$\mathscr{F}$

- $\exp{\left( x \right)} = e^x$
- $\min{\left( x \right)}$
- $\max{\left( x \right)}$

- $\text {MSE}(x)$




### 加减乘除
---
- 加减
    - $x \pm y=z$
    - $x \mp y=z$

- 乘除
    - 点乘：$x \cdot y=z$
    - 星乘：$x \ast y=z$
    - 叉乘：$x \times y=z$
    - 除法：$x \div y=z$

### 分式
---
- $\frac{x+y}{y+z}$
- $\dfrac{x+y}{y+z}$

- ${x+y} \over {y+z}$
- ${x+y} \choose {y+z}$

#### 开方
---
- 二次根号：$\sqrt{2}$
- n次根号：$\sqrt[n]{n}$


#### 对数
---
- $\ln{2}$
- $\lg{8}$
- $\log_{10}{8}$



#### 导数
---

- 微分：$\dfrac{{\rm d}y}{{\rm d}x}$

- 偏导数：$\dfrac{\partial y}{\partial x}$

- 一阶导数：$y^\prime$

#### 积分
---
- $\int{x}dx$
- $\int_{1}^{2}{x}dx$

- $\iint_{1}^{2}{x}dx$
- $\oint_{1}^{2}{x}dx$

### 极限
---
- $\lim{a+b}$
- $\lim\limits_{n\rightarrow+\infty}{a+b}$

### 累加类乘
---
- $\sum{a}$
- $\prod{x}$

- 带上下限

   - $\sum_{n=1}^{n=100}{a_n}$

   - $\prod_{n=1}^{n=100}{x_n}$


- 上下限在上下两侧

   - $\sum\limits_{n=1}^{N}{a_n}$

   - $\prod\limits_{n=1}^{N}{x_n}$


### 关系运算
- 小于等于$x \leq y$
- 大于等于$x \geq y$
- 不等于：$x \neq y$
- 约等于：$x \approx y$
- 恒等于：$x \equiv y$


---
### 括号

- 小括号
    - $(x)$
    - $\lgroup X \rgroup$

- 中括号：
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


#### 头上
---

- 均值：$\bar{x}$
- 向量：$\vec{a}$


- $\dot{x}$
- $\ddot{x}$

- $\acute{x}$
- $\grave{x}$

- $\check{x}$
- $\hat{x}$

- $\breve{x}$
- $\tilde{x}$

- $\widetilde{X}$
- $\widehat{X}$


---
- 上下划线
    - $\overline{x}$
    - $\underline{x}$

### 逻辑运算

- (∀):$\forall$
- (∃):$\exists$

- 无穷(∞)：$\infty$
- 空集(∅)：$\emptyset$



- $x \subset y$
- $x \supset y$

- $x \cup y$
- $x \cap y$
- $x \mid y$


- 属于：$\in$
- 不属于：$\notin$

- 与：$\land$
- 或：$\lor$
- 非：$\lnot$


- 因为：$\because$
- 所以：$\therefore$

- 服从分布：$\sim$
- 箭头指向：$\to$
---
### 虚数

z = x $\imath$ + j $\jmath$

---
### 三角函数
- 垂直：$\bot$

- 角度：$\angle A = 30^\circ$

- 正弦：$\sin(x)$
- 余弦：$\cos(x)$
- 正切：$\tan(x)$
- 余切：$\cot(x)$

---
## 矩阵
$$

\begin{matrix}
   a & b \\
   c & d
\end{matrix}

\\

\begin{pmatrix}
   a & b \\
   c & d
\end{pmatrix}

\\

\begin{bmatrix}
   a & b \\
   c & d
\end{bmatrix}

\\

\begin{Bmatrix}
   a & b \\
   c & d
\end{Bmatrix}


\\


\begin{vmatrix}
   a & b \\
   c & d
\end{vmatrix}


\\

\begin{Vmatrix}
   a & b \\
   c & d
\end{Vmatrix}




$$

---
- 成对符号
    - $\langle$
    - $\rangle$


    - $\lvert$
    - $\rvert$

    - $\lVert$
    - $\rVert$

    - $\lmoustache$
    - $\rmoustache$

---
- 取整符号
    - $\lceil$
    - $\rceil$
    - $\lfloor$
    - $\rfloor$





$$

\\

\\

\\


$$






