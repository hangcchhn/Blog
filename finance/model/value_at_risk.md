
---
## 风险价值
>VaR(Value at Risk)
> 在一定的置信水平下，投资组合在未来的一段时间内的最大可能损失。



### 1.方差-协方差法
> Variance-Covariance Method
- 收益率呈正态分布



### 2.历史数据模拟法
> Historical Data Simulation Method


### 3.蒙特卡洛模拟法
> Monte Carlo Simulation Method

---
### 肥尾风险下的调整后的风险价值和标准差
> fat tail risk
- Cornish-Fisher
- $CV_{adjusted}$:
    - critical value
$$

CV_{adjusted} = CV + \dfrac{(CV^2 - 1) \times S }{6} \\
 + \dfrac{(CV^3 - 3  \times CV) \times EK }{24}
 + \dfrac{(2  \times CV^3 - 5  \times CV) \times S^2 }{36}

$$

- $CV$:置信水平的临界值
    - 95%的置信水平:$CV = -1.96$
    - 99%的置信水平:$CV = -2.33$

- $EK$:超额峰度
    - $K$:峰度
    - $EK = K - 3$
- $S$:偏度



$$
VaR_{adjusted} = \mu - CV_{adjusted} \times \sigma

\\

\sigma_{adjusted} = \sigma \times \dfrac{CV_{adjusted}}{CV}

$$




---

- 概率p
$$

VaR(p) = -F^{-1}(p)
$$

- 第k个收益率:$r_k$
$$
r_k = \lfloor T \cdot p \rfloor
$$

$$
d = T \cdot p - k
\\

VaR(p) = -
\begin{cases}
null, & k = 0 \\
(r_k - r_{k-1}) \cdot d + r_{k-1}, & k > 0
\end{cases}
\\


$$
---
### 条件风险价值
> CVaR(Conditional Value at Risk)
- 估值函数E[X]
$$

CVaR(p) = E[-X|X \leq -VaR(p)]
\\

CVaR(p) = - \frac{1}{k}\sum\limits_{i=1}^{k}{r_i}

$$