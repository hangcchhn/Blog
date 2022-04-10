## 下偏矩
> Lower Partial Moment

---

- 离散型随机变量:$R$
- 收益率:$r_i$
- 期望:$E(R)$
- 方差:$D(R)$
$$
D(R) = E[R - E(R)]

\\

D(R) = \dfrac{1}{N}
    \sum\limits_{i = i}^{N}{(r_i - \bar{r})^2}
$$
- 置信区间:$\theta$=0.05


$$

\phi = \sqrt{(1 + \theta)} - 1

\\

\Omega = \phi^2 D[R]

\\

\sigma = \sqrt{\Omega}

$$


- 服从正态分布:$X \sim N(r_i, \sigma^2) $
- 概率分布函数
$$
f(x|r_i, \sigma) = \frac{1}{\sqrt{2\pi}\sigma}
    e^{-\dfrac{(x - r_i)^2}{2\sigma^2}}
$$
- 累计分布函数
$$
F(x|r_i, \sigma) = \frac{1}{N} \sum\limits_{i = 1}^{N}{f(x|r_i, \sigma)}
$$

---
## 下偏矩LPM
- $LPM_m(\tau)$是m阶下偏矩
- τ是期望收益率

$$

\\

LPM_m(\tau)=\int_{-\infty}^{\tau}
    {(\tau - x)^m f(x|r_i, \sigma) dx}

\\

LPM_1(\tau) = \frac{1}{n} \sum\limits_{j = 1}^{n}
    {[\sigma^2 f(\tau|r_j, \sigma) +
    (\tau - r_j)F(\tau|r_j,\sigma)]}

\\

LPM_2(\tau) = \frac{1}{n} \sum\limits_{j = 1}^{n}
{\big\lbrace
(\tau - r_j) \sigma^2 f(\tau;r_j,\mu) +
[(\tau - r_j)^2 + \sigma^2] f(\tau;r_j,\mu)
\big\rbrace}

$$

---

### 欧米伽比率
> Keating和Shadwick在2002年提出


- 风险调整后收益指标


- 收益率为正的概率除以收益率为负的概率
$$



$$

- $Omega$:
$$
Omega = \dfrac{r_a - r_f}{LPM_1 \times 12} + 1

$$


---
### 卡帕比率
> $Kappa$
$$
Kappa = \dfrac{r_a - r_f}{\sqrt[3]{LPM_3 \times 12}}

$$
---
### 下行偏差
> Downside Deviation
$$

DD(\tau) = \sqrt{LPM_2(\tau)}

$$






