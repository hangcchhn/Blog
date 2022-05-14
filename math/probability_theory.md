# 概率论
> probability theory

- $X$:随机变量X
- $P(X = x)$:随机变量X等于x的概率(Probability)
- $E(X)$:期望
- $D(X)$:方差

---

---
## 期望方差

### 期望

### 方差

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
f(x) = F(x)^\prime
$$

- $F^{-1}(X)$:累积分布函数的反函数