
# 风险模型
> risk model

- 投资组合p由N个资产构成
- $r_i$:资产i的收益率(return)
- $w_i$:资产i的权重(weight)

- $W$:权重组成的列向量
$
W = (w_1, w_2, \cdots, w_N)^T
$

- $\sum$:协方差矩阵



---
## 风险分解
> Risk Decomposition

- $r_p$:投资组合p的收益率
$$
r_p = \sum\limits_{i = 1}^{N}{w_i \times r_i}
$$

- $\sigma_p$:投资组合p的标准差
$$
\sigma_p = \sqrt{
    \sum\limits_{i = 1}^{N}{\sum\limits_{j = 1}^{N}{
    w_i \times w_j \times Cov(r_i, r_j)}}
}
$$

$$
\sigma_p = \sqrt{W^T \sum W}
$$


### 边际风险贡献
> MRC(Marginal Risk Contribution)
- $MRC_i$:资产i的边际风险贡献
$$
MRC_i = \dfrac{\partial \sigma_p}{\partial w_i}
$$

$$
MRC_i = \dfrac{1}{\sigma_p} \times
    \sum\limits_{j = 1}^{N}{w_j \times Cov(r_i, r_j)}
$$


$$
MRC_i = \dfrac{Cov(r_i, r_p)}{\sigma_p}
$$





---
$$
MRC_i = \dfrac{(\sum W)_i}{\sqrt{W^T \sum W}}
$$
- $(\sum W)_i$:
- $E_i$:第i个元素为1，其他元素为0的N维列向量

$$
MCR_i = \dfrac{\partial \sigma_p}{\partial w_i}
\\
 = \dfrac{1}{2\sqrt{W^T \sum W}} \times
 \dfrac{\partial (\sqrt{W^T \sum W})}{\partial w}
\\
 = \dfrac{1}{2\sqrt{W^T \sum W}} \times
 \dfrac{\partial (\sqrt{W^T \sum W})}{\partial W} \times
 \dfrac{\partial W}{\partial w}
\\
 = \dfrac{1}{2\sqrt{W^T \sum W}} \times 2W^T \times E_i
\\
 = \dfrac{W^T E_i}{\sqrt{W^T \sum W}}

 = \dfrac{E_i^T (\sum W)}{\sqrt{W^T \sum W}}

 = \dfrac{(\sum W)_i}{\sqrt{W^T \sum W}}
$$






### 风险贡献
> RC(Risk Contribution)
- $RC_i$:资产i的风险贡献

$$

RC_i = w_i \times MRC_i
$$



$$
\sigma_p = \sum\limits_{i = 1}^{N}{RC_i}
$$





---
## 风险平价模型
> Risk Parity

- 权重上限(upper bound):$b_u$
- 权重下限(lower bound):$b_l$

$$
\begin{cases}
b_l < w_i < b_u, i=1,2,\cdots,N \\
w_1 + w_2 + \cdots + w_N= 1
\end{cases}
$$

- 各个资产的风险贡献相同
$$
RC_i = \dfrac{\sigma_p}{N}
$$

$$
RC_i = RC_j, i \neq j
$$

$$
\sum\limits_{i = 1}^{N}{\sum\limits_{j = 1}^{N}{(RC_i - RC_j)^2}} = 0
$$

### 优化

$$

min{\sum\limits_{i = 1}^{N}{(\dfrac{RCi}{\sigma_p} - \dfrac{1}{N})^2}}

$$

### 雅可比矩阵

- $Jacobi$


- $Jacobi_{i, j}$
$$
Jacobi_{i, j} =
$$

---
## 风险预算模型
> Risk Budget


$$
\sum\limits_{i = 1}^{N}{[w_i (\sum W)_i - rc_i(W^T \sum W)]^2}
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