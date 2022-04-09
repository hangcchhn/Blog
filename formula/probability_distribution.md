# 概率分布
> probability distribution

- $X$:随机变量X
- $P(X = x)$:随机变量X等于x的概率(Probability)
---
## 概率分布函数
> PDF(Probability Distribution Function)
- $f(x)$:概率分布函数

- 连续型随机变量，概率密度函数
    - PDF(Probability Density Function)
$$
P(a \leq X \leq b) = \int_{a}^{b}f(x)dx
$$

$$
\int_{a}^{b}f(x)dx = 1
$$
- 离散型随机变量，概率质量函数
    - PMF(Probability Mass Function)

---
## 累积分布函数
> CDF(Cumulative Distribution Function)
- $F(x)$:累积分布函数
$$
F(x) = P(X \leq x)
$$
- CDF就是PDF的积分
$$
F(x) = \int_{-\infty}^{x}f(t)dt
$$
- PDF就是CDF的导数
$$
f(x) = F(x)^\prime
$$

---
## 均匀分布
- 离散型：$X \in \{x_1, x_2, \cdots, x_N\}$
$$
P(X = x_i) = \dfrac{1}{N}, i = 1, 2, \cdots, N
$$
- 连续性：$X \in [a, b]$
$$
f(x) =
\begin{cases}
0, & x \lt a \\
\dfrac{1}{b - a}, & a \leq x \leq b  \\
0, & x \gt b
\end{cases}

\\

F(x) =
\begin{cases}
0, & x \lt a \\
\dfrac{x - a}{b - a}, & a \leq x \leq b  \\
1, & x \gt b
\end{cases}

\\
F^{-1}(x) = a + x(b - a)
$$



---
## 伯努利分布
- 离散型：$X \in \{0, 1\}$
$$
P(X = 1) = p
\\
P(X = 1) = 1 - P
\\
E(X) = p
\\
Var(X) = p(1 - p)

$$

## 二项分布
> Binomial distribution
- n次独立重复试验，每次都服从同一伯努利分布
$$

E(X) = np
\\
Var(X) = np(1 - p)

$$


---
## 正态分布
> Normal distribution
> 高斯分布——Gaussian distribution
- $X \sim N(\mu, \sigma^2)$
- 概率密度函数
$$
Normal(x|\mu, \sigma^2) = \dfrac{1}{\sqrt{2\pi}\sigma}
    e^{-\dfrac{(x - \mu)^2}{2\sigma^2}}
$$

- 标准正态分布:$X \sim N(0, 1)$
$$
f(u) = \dfrac{1}{\sqrt{2\pi}}
    e^{-\dfrac{u^2}{2}}
$$

$$
u = \dfrac{x - \mu}{\sigma}
$$



---
## 拉普拉斯分布
> Laplace distribution
$$
Laplace(x|\mu, \gamma) = \dfrac{1}{2\gamma}
    e^{-\dfrac{x - \mu}{\gamma}}

\\
E(X) = \mu
\\
Var(X) = 2\gamma^2
$$

---
## 泊松分布
> Poisson distribution
- 离散型
- 在单位时间（或者单位面积）内事件发生的平均次数$\lambda$
- 在单位时间（或者单位面积）内事件发生k次数的概率$P(X = k)$
- $Poisson(X = k|\lambda)$
$$
P(X = k) = Poisson(X = k|\lambda)
\\
Poisson(X = k|\lambda) =
\dfrac{\lambda^k}{k!}e^{-\lambda},
    k = 0, 1, \cdots, N
\\
E(X) = \lambda
\\
Var(X) = \lambda
$$

## 指数分布
- 离散型
- 若事件服从泊松分布，则该事件前后两次发生的时间间隔服从指数分布。
$$
f(x) =
\begin{cases}
0, & x \lt 0 \\
\dfrac{\lambda}{e^{\lambda x}}, & x \geq b
\end{cases}
$$


---
## 伽玛分布
> Gamma distribution

### 伽玛函数
>  Gamma function
$$
\Gamma(x) = \int_{0}^{\infty}{t^{x - 1} e^{-t}dx}, x \gt 0
$$
$$
\Gamma(x + 1) = x\Gamma(x)
\\
\Gamma(k + 1) = k!
$$
- $Gamma(x|\alpha, \beta)$:
$$
Gamma(x|\alpha, \beta) = \dfrac{\beta x^\alpha e^{-\beta x}}{\Gamma(\alpha)}
$$
- $Poisson(X = k|\lambda)$
$$
Poisson(X = k|\lambda) = Gamma(\lambda|\alpha = k + 1, \beta = 1)
$$


---
## 贝塔分布
> Beta distribution

- $Beta(x|\alpha, \beta)$
$$
Beta(x|\alpha, \beta) =
    \dfrac{\Gamma(\alpha + \beta)}
    {\Gamma(\alpha)\Gamma(\beta)}
    x^{\alpha - 1}
    (1 - x)^{\beta - 1}
$$

---
## 狄利克雷分布
> Dirichlet distribution
- N个连续型随机变量$X \in [0, 1]$
- $\sum{x} = 1$

$$
Dirichlet(x|\alpha) =
    \dfrac{\Gamma({\sum_{j = 1}^{N}{\alpha_j})}}
    {\prod_{j = 1}^{N}{\Gamma(\alpha_j)}}
    \prod\limits_{i = 1}^{N}{x_i^{\alpha_i - 1}}
$$

---
## 卡方分布
> Chi-square distribution
- $X \sim \chi^2$
$$
Chi-square(x|k) = \Gamma(x|\alpha = k/2, \beta = 2)
\\
Chi-square(x|k) = \dfrac{(1/2)^{k/2}}{\Gamma(k/2)}
    x^{k/2 - 1} e^{-x/2}
$$



