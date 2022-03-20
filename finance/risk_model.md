
# 风险模型
> risk model

---
## 风险平价模型
> Risk Parity
- 投资组合由N个资产构成
- 资产i的权重$w_i$
- 权重上(high)限$h$
- 权重下(low)限$l$

$$
\begin{cases}
l < w_i < h, i=1,2,\cdots,N \\
w_1 + w_2 + \cdots + w_N= 1
\end{cases}
$$

- $w_i$构成权重向量$\vec{w}$
- $w_i$的协方差矩阵$\sum{w}$


- 投资组合的标准差$\sigma$

$$
\sigma = \sqrt{\vec{w}\sum{w}}
$$


$$
\dfrac{\partial \sigma}{\partial w_i}
 = \dfrac{1}{2\sqrt{\vec{w}\sum{w}}} \times
 \dfrac{\partial(\vec{w}\sum{w})}{\partial w_i}
$$

- 资产i的风险贡献$\sigma_i(w)$
$rc_i$




$$

rc_i = \dfrac{w_i}{\sigma} \times \dfrac{\partial \sigma}{\partial w_i}
 = \frac{w_i \cdot {(\sum{w})}_i}{\sqrt{\vec{w} \cdot \sum{w}}}

$$
- ??

$$

\sigma(w) = \sqrt{\vec{w} \cdot \sum{w}}

\newline

\sigma(w) = \sum\limits_{i = 1}^{N}{rc_i}

\newline
rc_i = \frac{\sigma(w)}{N}

\newline
min{\sum\limits_{i = 1}^{N}{[
        w_i \cdot {(\sum{w})}_i - \sigma(w)^2 / N
]^2}}

\newline



$$




---
## 风险预算模型
> Risk Budget

- 资产i的风险贡献$rc_i$
$$

rc_i = \frac{\sigma_i(w)}{\sigma(w)}
\newline

\sum\limits_{i = 1}^{N}{[
    w_i \cdot (\sum{w})_i - rc_i(\vec{w} \cdot \sum{w})
]^2}

\newline

$$




---


- CDF:累积概率密度函数$F(x)$

- $F(x)$的反函数是$F^{-1}(x)$








---
### 风险价值
>VaR(Value at Risk)
> 在一定的置信水平下，投资组合在未来的一段时间内的最大可能损失。

- 概率p
$$

VaR(p) = -F^{-1}(p)

\newline




\newline

$$
- 第k个收益率r_k
$$

k = |T \cdot p|
\newline



\newline

d = T \cdot p - k
\newline

VaR(p) = -
\begin{cases}
null, & if \quad k = 0 \\
(r_k - r_{k-1}) \cdot d + r_{k-1}, & if \quad k > 0
\end{cases}
\newline


$$
---
### 条件风险价值
> CVaR(Conditional Value at Risk)
- 估值函数E[X]
$$

CVaR(p) = E[-X|X \leq -VaR(p)]
\newline

CVaR(p) = - \frac{1}{k}\sum\limits_{i=1}^{k}{r_i}

$$

