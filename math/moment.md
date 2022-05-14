
# 矩
> moment

---
## n阶矩
> 变量的n次方与其概率密度函数之积的积分

- $P(x)$:概率分布函数
- $C(x)$:累积分布函数

- 连续性随机变量
$$
\mu_n = \int_{-\infty}^{x}{(x - c)^n}dC(x) = \int_{-\infty}^{x}{(x - c)^nP(x)}dx
$$
- 离散性随机变量
$$
\mu_n = \dfrac{1}{N}\sum\limits_{i = 1}^{N}{(x_i - c)^n}
$$

$$
\mu_n = E\{[X - c]^n\}
$$


---
- 原点矩
    - raw moment
    - $c = 0$
$$
\mu_n = \dfrac{1}{N}\sum\limits_{i = 1}^{N}{x_i^n}
$$
$$
\mu_n = E(X^n)
$$

- 中心矩
    - central mement
    - $c = \mu_1 = \bar{x} = \mu = E(X)$
$$
\mu_n = \dfrac{1}{N}\sum\limits_{i = 1}^{N}{(x_i - \bar{x})^n}
$$
$$
\mu_n = E\{[X - E(X)]^n\}
$$

- 标准矩
    - standardised mement
    - 正态分布的n阶中心距
    - normalised n-th central moment
    - $\sigma$:标准差
$$
\dfrac{\mu_n}{\sigma_x^n} = \dfrac{1}{N}
    \sum\limits_{i = 1}^{N}
    {(\dfrac{x_i - \bar{x}}{\sigma_x})^n}
$$

$$
\mu_n = E[(\dfrac{x - \mu}{\sigma})^2]
$$

---
### 期望是一阶中心矩
> expectation
$$
\mu_1 = \bar{x} = \dfrac{1}{n}\sum\limits_{i = 1}^{n}{x_i}

$$
---
### 方差是二阶标准矩
> variance

- 总体方差
$$
\mu_2 = \sigma_x^2 =  \dfrac{1}{N}
    \sum\limits_{i = 1}^{N}{(x_i - \bar{x})^2}
$$

- 样本方差
$$
s_x^2 = \dfrac{1}{n - 1}
    \sum\limits_{i = 1}^{n}{(x_i - \bar{x})^2}
$$

---
### 偏度是三阶标准矩
> skewness
- 总体偏度
$$
\dfrac{\mu_3}{\sigma_x^3} = \dfrac{1}{N}
    \sum\limits_{i = 1}^{N}
    {(\dfrac{x_i - \bar{x}}{\sigma_x})^3}
$$


- 样本偏度
$$
skewness = \dfrac{n}{(n - 1)(n - 2)}
    \sum\limits_{i = 1}^{n}{(\dfrac{x_i - \bar{x}}{s_x})^3}
$$

---
### 峰度是四阶标准矩
> kurtosis
- 总体峰度
$$
\dfrac{\mu_4}{\sigma_x^4} = \dfrac{1}{N}
    \sum\limits_{i = 1}^{N}
    {(\dfrac{x_i - \bar{x}}{\sigma_x})^4}
$$

- 样本峰度
$$
kurtosis = \dfrac{n(n + 1)}{(n - 1)(n - 2)(n - 3)}
    \sum\limits_{i = 1}^{n}{(\dfrac{x_i - \bar{x}}{s_x})^4}

$$

---
### 超额峰度
> EK(Excess Kurtosis)
- 样本超额峰度$EK$
$$
EK = kurtosis - \dfrac{3(n + 1)^2}{(n - 2)(n - 3)}
$$
- 样本数量：$n \to \infty$
$$
EK = kurtosis - 3
$$

- 正态分布：$kurtosis = 3$

- 正峰度（尖峰）：$kurtosis > 3$
    - 从形态上看，相比于正态分布更陡峭或尾部更厚。
- 负峰度（扁峰）：$kurtosis < 3$
    - 从形态上看，相比于正态分布更平缓或尾部更薄。

---
### Jarque-Bera
> 来检验样本数据相对于正态分布的峰度和偏度
$$
JarqueBera = \dfrac{n}{6} \cdot(Skewness^2 + \dfrac{Kurtosis^2}{4})
$$

---
### GH测度
> Graham和Harvery
- GH1:市场基准加减杠杆以匹配对冲基金的波动性
- GH2:对冲基金加减杠杆以匹配对冲基金的波动性

---
### M2测度

---

