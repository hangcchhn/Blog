
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

\\

\sigma(w) = \sum\limits_{i = 1}^{N}{rc_i}

\\
rc_i = \frac{\sigma(w)}{N}

\\
min{\sum\limits_{i = 1}^{N}{[
        w_i \cdot {(\sum{w})}_i - \sigma(w)^2 / N
]^2}}

\\



$$




---
## 风险预算模型
> Risk Budget

- 资产i的风险贡献$rc_i$
$$

rc_i = \frac{\sigma_i(w)}{\sigma(w)}
\\

\sum\limits_{i = 1}^{N}{[
    w_i \cdot (\sum{w})_i - rc_i(\vec{w} \cdot \sum{w})
]^2}

\\

$$




---


- CDF:累积概率密度函数$F(x)$

- $F(x)$的反函数是$F^{-1}(x)$








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

\\




\\

$$
- 第k个收益率r_k
$$

k = |T \cdot p|
\\



\\

d = T \cdot p - k
\\

VaR(p) = -
\begin{cases}
null, & if \quad k = 0 \\
(r_k - r_{k-1}) \cdot d + r_{k-1}, & if \quad k > 0
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

## 压力测试
> stress testing

- 历史极端事件法

- 风险因子震荡法

- 外部因子震荡法

### 情景分析
> scenario analysis


### 回溯测试
> back testing

- 获取收益率：
    - $r_i$:投资标的(investment)
    - $r_b$:基准(benchmark)
    - $r_p$:投资组合(portfolio)
- 获取当期权重
    - $w^b_i$:基准中投资标的i的权重
    - $w^p_i$:投资组合中投资标的i的权重
- 计算回溯收益序列：
    - $R$:
    - $R_b$:
    - $R_p$:

- 计算投资组合中各投资标的的协方差矩阵用来风险分解
- 计算收益序列的风险统计数据

### 风险分解
> Risk Decomposition
- 风险边际贡献
    - MCR(Marginal Contribution to Risk)

- $\sum$:协方差矩阵
$$
\sigma^2_{i, j} = \rho_{i, j} \times \sigma_i \times \sigma_j
$$
- $\sigma^2_{i, j}$:证券i和证券j之际的协方差

- $\sigma_p$:投资组合的标准差
$$
\sigma_p = \sqrt{{W_p}^T \sum W_p}
$$
- $MCR_i$:投资标的i基于跟踪误差的风险边际贡献
$$
MCR_i = \dfrac{w^p_i W^T \sum}{\sigma_{p - b}}
$$
- $\sigma_{p - b}$:投资组合的跟踪误差
- 基于标准差的$MRC_i$就将$\sigma_{p - b}$替换成$\sigma_p$


### 自相关系数

- 同一投资组合相邻周期的收益率相关系数是一阶自相关系数
$$

\rho_{r_{t-1}, r_t} = \rho_1

$$
- $r_t$:观察收益率
- $r^{\prime}_t$:真实收益率
$$
r^{\prime}_t = \dfrac{r_t - \rho_1 \times r_{t-1}}{1 - \rho_1}

$$
- 非平稳化的收益率
---
### 风险管理

- 交易
- 分散
- 对冲
- 保险