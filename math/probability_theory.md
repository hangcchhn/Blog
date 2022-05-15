# 概率论
> probability theory


## 随机变量
> random variable

- $X$:随机变量X



## 概率
> probability
- $P(X = x_i) = p(x_i)$:随机变量X等于x的概率
$$
\sum\limits_{i = 1}^{N}{p(x_i)} = 1
$$
---

## 随机向量
> random vector
- $\pmb{X}$:随机变量X

## 期望
> expectation
- $\mathbb{E}(X)$
$$
\mathbb{E}(X) = \sum\limits_{i = 1}^{N}{x_ip(x_i)}
$$

---
## 方差
> variance
- $var(x)$
- $D(x)$
$$
D(x) = \mathbb{E}\{[X - \mathbb{E}(X)]^2\}
$$




---
## 协方差
> covariance
- $cov(X, Y)$
$$
cov(X, Y) = \mathbb{E}\{[X - \mathbb{E}(X)][Y - \mathbb{E}(Y)]\}
$$





## 协方差矩阵
- $\Sigma$
$$
\Sigma =
\begin{pmatrix}
   \sigma_1^2 & \cdots & cov(x_1, x_N) \\
   \cdots & \sigma_i^2 & \cdots \\
   cov(x_N, x_1) & \cdots & \sigma_N^2
\end{pmatrix}

$$
- 对角元素是所有变量的方差
$$
\rho(x_i, x_i) = 1
\\
cov(x_i, x_i) = \sigma_i^2
$$
- 非对角元素是所有变量组合的协方差
$$
cov(x, y) = \rho_{x, y} \times \sigma_x \times \sigma_y
$$









---
## 分布函数

### 概率分布函数
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
### 累积分布函数
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
f(x) = F'(x)
$$

- $F^{-1}(X)$:累积分布函数的反函数